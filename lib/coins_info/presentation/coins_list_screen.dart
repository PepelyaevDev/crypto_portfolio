import 'package:crypto_portfolio/coins_info/coins_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinsListScreen extends StatefulWidget {
  @override
  State<CoinsListScreen> createState() => _CoinsListScreenState();
}

class _CoinsListScreenState extends State<CoinsListScreen> {
  late final CoinsInfoBloc _coinsInfoBloc;

  @override
  void initState() {
    _coinsInfoBloc = BlocProvider.of<CoinsInfoBloc>(context);
    _coinsInfoBloc.add(UpdateCoinsInfo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder (
        bloc: _coinsInfoBloc,
        builder: (_, CoinsInfoState state) {
          switch (state.status) {
            case CoinsInfoStatus.initial : return SizedBox();
            case CoinsInfoStatus.loading : return SizedBox();
            case CoinsInfoStatus.success : return ListView(
              children:
                state.coinsList.coins.map((e) => Text(e.name)).toList()
              ,
            );
            case CoinsInfoStatus.failure : return SizedBox();
          }
        },
      ),
    );
  }
}
