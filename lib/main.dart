import 'package:coins_info_repository/coins_info_repository.dart';
import 'package:crypto_portfolio/coins_info/coins_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(CryptoPortfolioApp());
}

class CryptoPortfolioApp extends StatelessWidget {
  CryptoPortfolioApp({super.key});

  final CoinsInfoRepository _coinsInfoRepository = CoinsInfoRepository();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CoinsInfoBloc(_coinsInfoRepository)),
      ],
      child: MaterialApp(
        home: CoinsListScreen(),
      ),
    );
  }
}
