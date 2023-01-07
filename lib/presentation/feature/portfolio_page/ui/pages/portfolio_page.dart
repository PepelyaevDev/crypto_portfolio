import 'package:crypto_portfolio/main.dart';
import 'package:crypto_portfolio/presentation/design_system/widgets/snack_bar_widget.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/bloc/portfolio_bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/ui/pages/add_payment_page.dart';
import 'package:crypto_portfolio/presentation/feature/portfolio_page/ui/widgets/portfolio_coin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt.get<PortfolioBloc>()..add(PortfolioEvent.update()),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(),
          body: RefreshIndicator(
            onRefresh: () async {
              context.read<PortfolioBloc>().add(PortfolioEvent.update());
            },
            child: ListView(
              children: [
                BlocConsumer<PortfolioBloc, PortfolioState>(
                  builder: (_, PortfolioState state) {
                    return state.maybeWhen(
                      success: (portfolioCoins) => Column(
                        children:
                            portfolioCoins.map((coin) => PortfolioCoinWidget(coin: coin)).toList(),
                      ),
                      loading: () => CircularProgressIndicator(),
                      orElse: () => SizedBox(),
                    );
                  },
                  listener: (_, PortfolioState state) {
                    state.maybeWhen(
                      success: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBarWidget(AppLocalizations.of(context)!.dataUpdated),
                        );
                      },
                      failure: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBarWidget(AppLocalizations.of(context)!.dataNotUpdated),
                        );
                      },
                      orElse: () => null,
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push<void>(
                      MaterialPageRoute(
                        builder: (_) => AddPaymentPage(
                          context.read<PortfolioBloc>(),
                        ),
                      ),
                    );
                  },
                  child: Text(AppLocalizations.of(context)!.addPayment),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
