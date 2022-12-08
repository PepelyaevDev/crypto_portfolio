import 'package:crypto_portfolio/main.dart';
import 'package:crypto_portfolio/presentation/features/portfolio_screen/portfolio_bloc/portfolio_bloc.dart';
import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final PortfolioBloc _portfolioBloc = getIt.get<PortfolioBloc>();

  @override
  void dispose() {
    _portfolioBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
