import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:crypto_portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/bottom_navigation_bloc.dart';
import 'bottom_navigation_tabs.dart';

class BottomNavigationPage extends StatelessWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (DateTime.now().isAfter(applicationBlockingDate)) {
      return Scaffold(
        body: Center(
          child: Text(
            Failure.from(null).getMessage(context),
          ),
        ),
      );
    }
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: state.tab.screen,
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColors.blue,
            unselectedItemColor: AppColors.grayDark,
            items: BottomNavigationTabs.data.values.map((value) {
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
              }
              return BottomNavigationBarItem(
                icon: value.icon,
                label: label,
                backgroundColor: AppColors.white,
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
