import 'package:crypto_portfolio/domain/entity/feature/portfolio_coins/portfolio_coins_list.dart';
import 'package:crypto_portfolio/presentation/feature/delete_payment_view/delete_payment_view/delete_payment_view.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_screen/portfolio_bloc/portfolio_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioCoinWidget extends StatefulWidget {
  PortfolioCoinWidget({required this.coin});

  final PortfolioCoin coin;

  @override
  State<PortfolioCoinWidget> createState() => _PortfolioCoinWidgetState();
}

class _PortfolioCoinWidgetState extends State<PortfolioCoinWidget> {
  late final PortfolioCoin coin;

  @override
  void initState() {
    coin = widget.coin;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
