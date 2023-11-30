import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/portfolio_coin_history/payment_widget.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/bloc/portfolio_list_history_bloc/portfolio_list_history_bloc.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/pages/add_payment_page.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioListHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<PortfolioListHistoryBloc>(
      create: (context) => PortfolioListHistoryBloc(context.read<PortfolioRepo>()),
      child: Builder(
        builder: (context) {
          return BlocBuilder<PortfolioListHistoryBloc, PortfolioListHistoryState>(
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  actions: [
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => AddPaymentPage(),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: marginFromEdgeOfScreen),
                  ],
                ),
                body: ListView(
                  children: [
                    SizedBox(height: 5),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, i) {
                        final CoinEntity coin = _coin(state.coins, _payments(state.coins)[i].id);
                        return PaymentWidget(
                          PaymentWidgetArgs(
                            name: coin.id.symbol,
                            coinLogo: coin.image,
                            payment: _payments(state.coins)[i],
                            onTapDelete:
                                coin.canDelete(coin.history.indexOf(_payments(state.coins)[i]))
                                    ? (payment) {
                                        context
                                            .read<PortfolioListHistoryBloc>()
                                            .add(PortfolioListHistoryEvent.deletePayment(payment));
                                      }
                                    : null,
                          ),
                        );
                      },
                      separatorBuilder: (_, __) => Divider(height: 1),
                      itemCount: _payments(state.coins).length,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  List<PaymentEntity> _payments(CoinsEntity coins) {
    final List<PaymentEntity> payments = [];
    for (var e in coins.list) {
      payments.addAll(e.history);
    }
    payments.sort((a, b) {
      return b.dateTime.compareTo(a.dateTime);
    });
    return payments;
  }

  CoinEntity _coin(CoinsEntity coins, CoinId id) {
    return coins.list.firstWhere((e) => e.id == id);
  }
}
