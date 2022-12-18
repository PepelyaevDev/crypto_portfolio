import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/entity/core/screen_status.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:crypto_portfolio/presentation/feature/add_payment_screen/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_screen/portfolio_bloc/portfolio_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPaymentScreen extends StatelessWidget {
  const AddPaymentScreen._();

  static Route<void> route(PortfolioBloc portfolioBloc) {
    return MaterialPageRoute<void>(
      builder: (_) => BlocProvider.value(
        value: portfolioBloc,
        child: const AddPaymentScreen._(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt.get<AddPaymentBloc>(),
      child: AddPaymentView(),
    );
  }
}

class AddPaymentView extends StatefulWidget {
  @override
  State<AddPaymentView> createState() => _AddPaymentViewState();
}

class _AddPaymentViewState extends State<AddPaymentView> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _numberOfCoinsController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();
    _numberOfCoinsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text('Amount'),
          TextField(
            controller: _amountController,
          ),
          Text('Number of coins'),
          TextField(
            controller: _numberOfCoinsController,
          ),
          BlocConsumer<AddPaymentBloc, AddPaymentBlocState>(
            builder: (_, AddPaymentBlocState state) {
              if (state.status == ScreenStatus.loading) return CircularProgressIndicator();
              return SizedBox();
            },
            listener: (_, AddPaymentBlocState state) {
              if (state.status == ScreenStatus.success) {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Payment added'),
                ));
                context.read<PortfolioBloc>().add(UpdatePortfolioCoinsListEvent());
              }
              if (state.status == ScreenStatus.failure) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Payment not added'),
                ));
              }
            },
          ),
          ElevatedButton(
            onPressed: () {
              context.read<AddPaymentBloc>().add(
                    AddPaymentEvent(
                      payment: Payment(
                        symbol:
                            context.read<AddPaymentBloc>().state.marketCoinsList.coins[24].symbol,
                        dateTime: DateTime.now(),
                        type: PaymentType.Deposit,
                        amount: double.parse(_amountController.text),
                        numberOfCoins: double.parse(_numberOfCoinsController.text),
                      ),
                    ),
                  );
            },
            child: Text('Add payment'),
          ),
        ],
      ),
    );
  }
}
