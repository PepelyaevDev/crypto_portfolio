import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(CryptoPortfolioApp());
}

class CryptoPortfolioApp extends StatelessWidget {
  CryptoPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //BlocProvider(create: (_) => CoinsInfoBloc(_coinsInfoRepository)),
      ],
      child: MaterialApp(
        home: SizedBox(),
      ),
    );
  }
}
