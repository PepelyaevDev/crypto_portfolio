import 'package:crypto_portfolio/application/features/portfolio/bloc/portfolio_bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/portfolio_coins_widget.dart';
import 'package:crypto_portfolio/domain/repo/coins_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          PortfolioBloc(context.read<CoinsRepo>())..add(PortfolioEvent.update()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SafeArea(
              child: RefreshIndicator(
                onRefresh: () async {
                  context.read<PortfolioBloc>().add(PortfolioEvent.update());
                },
                child: Column(
                  children: [
                    TextFormField(
                      controller: searchController,
                      onChanged: (_) {
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 10),
                    BlocBuilder<PortfolioBloc, PortfolioState>(
                      builder: (_, PortfolioState state) {
                        return state.maybeWhen(
                          success: (coinsEntity) => PortfolioCoinsWidget(
                            searchValue: searchController.text,
                            coinsEntity: coinsEntity,
                          ),
                          loading: () => CircularProgressIndicator(),
                          orElse: () => SizedBox(),
                        );
                      },
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
