import 'package:crypto_portfolio/common/design_system/custom_widgets/primary_container.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/portfolio_coin_history/payment_widget.dart';
import 'package:flutter/material.dart';

import 'delete_popup.dart';

class PortfolioCoinHistory extends StatelessWidget {
  final CoinEntity coin;
  final VoidCallback onTapAdd;
  final ValueChanged<PaymentEntity> onTapDelete;
  final VoidCallback onTapDeleteAll;

  const PortfolioCoinHistory({
    required this.coin,
    required this.onTapAdd,
    required this.onTapDelete,
    required this.onTapDeleteAll,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.localization.transactionHistory,
                  style: context.styles.titleMedium,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: onTapAdd,
                    ),
                    IconButton(
                      icon: Icon(Icons.delete_outline),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (_) => DeletePopup(
                            title: context.localization.deleteTransactionHistory,
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  context.localization.statisticsWillDeleted,
                                  style: context.styles.bodyMedium,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  context.localization.actionNotUndone,
                                  style: context.styles.bodyMedium,
                                ),
                              ],
                            ),
                            onTapDelete: () {
                              onTapDeleteAll.call();
                              context.pop();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          PrimaryContainer(
            ink: true,
            child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) => PaymentWidget(
                PaymentWidgetArgs(
                  name: coin.id.symbol,
                  coinLogo: coin.image,
                  payment: coin.history[i],
                  onTapDelete: coin.canDelete(i) ? onTapDelete : null,
                ),
              ),
              separatorBuilder: (_, __) => Divider(height: 1),
              itemCount: coin.history.length,
            ),
          ),
        ],
      ),
    );
  }
}
