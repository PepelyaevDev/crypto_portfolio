import 'package:crypto_portfolio/domain/entity/market_coins/market_coins_list.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment.dart';
import 'package:crypto_portfolio/domain/entity/portfolio_coins/payment_type.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/bloc/portfolio_bloc/portfolio_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPaymentPage extends StatefulWidget {
  final PortfolioBloc portfolioBloc;

  const AddPaymentPage(this.portfolioBloc);

  @override
  State<AddPaymentPage> createState() => _AddPaymentPageState();
}

class _AddPaymentPageState extends State<AddPaymentPage> {
  late final List<MarketCoin> marketCoinsList;
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
    return BlocProvider.value(
      value: widget.portfolioBloc,
      child: BlocProvider(
        create: (BuildContext context) => getIt.get<AddPaymentBloc>(),
        child: Builder(builder: (context) {
          context.read<AddPaymentBloc>().state.maybeWhen(
                initial: (list) => marketCoinsList = list,
                orElse: () => null,
              );
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
                BlocConsumer<AddPaymentBloc, AddPaymentState>(
                  builder: (_, AddPaymentState state) {
                    return state.maybeWhen(
                      loading: () => CircularProgressIndicator(),
                      orElse: () => SizedBox(),
                    );
                  },
                  listener: (_, AddPaymentState state) {
                    state.maybeWhen(
                      success: () {
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Payment added'),
                        ));
                        context.read<PortfolioBloc>().add(PortfolioEvent.update());
                      },
                      failure: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Payment not added'),
                        ));
                      },
                      orElse: () => null,
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<AddPaymentBloc>().add(
                          AddPaymentEvent.add(
                            payment: Payment(
                              symbol: marketCoinsList[24].symbol,
                              dateTime: DateTime.now(),
                              type: Deposit(),
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
        }),
      ),
    );
  }
}
