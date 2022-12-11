import 'package:crypto_portfolio/domain/entity/screen_status.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:crypto_portfolio/presentation/features/add_payment_screen/add_payment_screen/add_payment_screen.dart';
import 'package:crypto_portfolio/presentation/features/delete_payment_view/delete_payment_view/delete_payment_view.dart';
import 'package:crypto_portfolio/presentation/features/portfolio_screen/portfolio_bloc/portfolio_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt.get<PortfolioBloc>(),
      child: PortfolioView(),
    );
  }
}

class PortfolioView extends StatefulWidget {
  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  @override
  void initState() {
    context.read<PortfolioBloc>().add(UpdatePortfolioCoinsListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          BlocConsumer<PortfolioBloc, PortfolioBlocState>(
            builder: (_, PortfolioBlocState state) {
              return Column(
                children: [
                  if (state.status == ScreenStatus.loading) CircularProgressIndicator(),
                  ...state.portfolioCoinsList.coins
                      .map((coin) => Column(
                            children: [
                              Text(coin.name),
                              ...coin.history
                                  .map((payment) => Row(
                                        children: [
                                          Text(payment.amount.toString() + '  ' + payment.numberOfCoins.toString()),
                                          IconButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (_) {
                                                    return DeletePaymentView(
                                                      payment: payment,
                                                      portfolioBloc: context.read<PortfolioBloc>(),
                                                    );
                                                  });
                                            },
                                            icon: Icon(Icons.delete),
                                          ),
                                        ],
                                      ))
                                  .toList(),
                            ],
                          ))
                      .toList(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push<void>(
                        AddPaymentScreen.route(context.read<PortfolioBloc>()),
                      );
                    },
                    child: Text('Add Payment'),
                  ),
                ],
              );
            },
            listener: (_, PortfolioBlocState state) {
              if (state.status == ScreenStatus.success) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Data updated'),
                ));
              }
              if (state.status == ScreenStatus.failure) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Data not updated'),
                ));
              }
            },
          ),
        ],
      ),
    );
  }
}
