import 'package:crypto_portfolio/application/app/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:crypto_portfolio/application/app/bottom_navigation/page/bottom_navigation_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          bottomNavigationBar: BottomNavigationBar(
            items: BottomNavigationTabs.data.values.map((value) {
              final BottomNavigationKey key = BottomNavigationTabs.data.keys.firstWhere(
                (key) => BottomNavigationTabs.data[key] == value,
              );
              late final String label;
              switch (key) {
                case BottomNavigationKey.market:
                  label = AppLocalizations.of(context)!.market;
                  break;
                case BottomNavigationKey.portfolio:
                  label = AppLocalizations.of(context)!.portfolio;
                  break;
                case BottomNavigationKey.news:
                  label = AppLocalizations.of(context)!.news;
                  break;
              }
              return BottomNavigationBarItem(
                icon: value.icon,
                label: label,
              );
            }).toList(),
            currentIndex: state.tab.index,
            onTap: (int i) {
              context.read<BottomNavigationBloc>().add(
                    BottomNavigationEvent(
                      BottomNavigationTabs.data.keys.firstWhere(
                        (e) => BottomNavigationTabs.data[e]!.index == i,
                      ),
                    ),
                  );
            },
          ),
        );
      },
    );
  }
}
