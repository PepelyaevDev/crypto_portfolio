import 'package:crypto_portfolio/application/features/portfolio/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/add_payment_widgets/add_payment_button.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/add_payment_widgets/select_coin_widget.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPaymentPage extends StatefulWidget {
  final String? coinID;

  const AddPaymentPage({this.coinID});

  @override
  State<AddPaymentPage> createState() => _AddPaymentPageState();
}

class _AddPaymentPageState extends State<AddPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddPaymentBloc(
        context.read<MarketRepo>(),
        context.read<PortfolioRepo>(),
      ),
      child: Builder(builder: (context) {
        return BlocConsumer<AddPaymentBloc, AddPaymentState>(
          listener: (context, state) {
            state.maybeMap(
              error: (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(e.error),
                    duration: Duration(milliseconds: 800),
                  ),
                );
              },
              orElse: () => null,
            );
          },
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(),
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: [
                    SelectCoinWidget(coinState: state, coinId: widget.coinID),
                    SizedBox(height: 10),
                    AddPaymentButton(state: state),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
