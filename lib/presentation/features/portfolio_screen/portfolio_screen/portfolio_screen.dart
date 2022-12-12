import 'package:crypto_portfolio/domain/entity/screen_status.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:crypto_portfolio/presentation/design_system/widgets/custom_snack_bar.dart';
import 'package:crypto_portfolio/presentation/features/add_payment_screen/add_payment_screen/add_payment_screen.dart';
import 'package:crypto_portfolio/presentation/features/portfolio_screen/portfolio_bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/presentation/features/portfolio_screen/portfolio_screen/widgets/portfolio_coin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<PortfolioBloc>().add(UpdatePortfolioCoinsListEvent());
        },
        child: ListView(
          children: [
            Text(AppLocalizations.of(context)!.helloWorld),
            BlocConsumer<PortfolioBloc, PortfolioBlocState>(
              builder: (_, PortfolioBlocState state) {
                return Column(
                  children: [
                    if (state.status == ScreenStatus.loading) CircularProgressIndicator(),
                    ...state.portfolioCoinsList.coins.map((coin) => PortfolioCoinWidget(coin: coin)).toList(),
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
                  ScaffoldMessenger.of(context).showSnackBar(
                    CustomSnackBar('Data updated'),
                  );
                }
                if (state.status == ScreenStatus.failure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    CustomSnackBar('Data not updated'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
