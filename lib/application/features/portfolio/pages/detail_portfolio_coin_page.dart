import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_appbar.dart';
import 'package:flutter/material.dart';

class DetailPortfolioCoinPage extends StatelessWidget {
  final String coinId;
  const DetailPortfolioCoinPage(this.coinId);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leftWidget: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: AppBarIconButton(
              iconData: Icons.arrow_back,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        body: Center(
          child: Text(
            'detail info',
          ),
        ),
      ),
    );
  }
}
