import 'package:crypto_portfolio/common/design_system/custom_widgets/coingecko_widget.dart';
import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crypto_portfolio/presentation/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'bottom_navigation_tabs.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: state.tab.screen,
          ),
          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (state.tab.showGeckoWidget)
                Card(
                  shape: BeveledRectangleBorder(),
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CoinGeckoWidget(),
                        SizedBox(width: marginFromEdgeOfScreen),
                      ],
                    ),
                  ),
                ),
              NavigationBarTheme(
                data: context.theme.navigationBarTheme.copyWith(
                    indicatorColor: Colors.transparent,
                    labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
                    iconTheme: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return IconThemeData(color: context.colors.primary);
                      }
                      return IconThemeData(color: context.colors.onSurface);
                    }),
                    indicatorShape: CircleBorder(),
                    labelTextStyle: MaterialStateProperty.all(
                      context.styles.bodySmall!.copyWith(color: context.colors.primary),
                    )),
                child: NavigationBar(
                  destinations: BottomNavigationTabs.data.values.map((value) {
                    final BottomNavigationKey key = BottomNavigationTabs.data.keys.firstWhere(
                      (key) => BottomNavigationTabs.data[key] == value,
                    );
                    late final String label;
                    switch (key) {
                      case BottomNavigationKey.market:
                        label = context.localization.market;
                        break;
                      case BottomNavigationKey.watchlist:
                        label = context.localization.watchlist;
                        break;
                      case BottomNavigationKey.portfolio:
                        label = context.localization.portfolio;
                        break;
                      case BottomNavigationKey.news:
                        label = context.localization.news;
                        break;
                      case BottomNavigationKey.settings:
                        label = context.localization.settings;
                        break;
                    }
                    return NavigationDestination(
                      icon: Icon(value.icon),
                      label: label,
                    );
                  }).toList(),
                  selectedIndex: state.tab.index,
                  onDestinationSelected: (int i) {
                    context.read<BottomNavigationBloc>().add(
                          BottomNavigationEvent(
                            BottomNavigationTabs.data.keys.firstWhere(
                              (e) => BottomNavigationTabs.data[e]!.index == i,
                            ),
                          ),
                        );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
