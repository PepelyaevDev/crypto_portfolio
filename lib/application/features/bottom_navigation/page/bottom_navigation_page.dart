import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/bottom_navigation_bloc.dart';
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
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.white,
            items: BottomNavigationTabs.data.values.map((value) {
              final BottomNavigationKey key = BottomNavigationTabs.data.keys.firstWhere(
                (key) => BottomNavigationTabs.data[key] == value,
              );
              late final String label;
              switch (key) {
                case BottomNavigationKey.market:
                  label = context.localization.market;
                  break;
                case BottomNavigationKey.portfolio:
                  label = context.localization.portfolio;
                  break;
                case BottomNavigationKey.news:
                  label = context.localization.news;
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
