import 'package:crypto_portfolio/application/app/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:crypto_portfolio/application/app/bottom_navigation/page/bottom_navigation_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            items: BottomNavigationTabs.data.values
                .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.label))
                .toList(),
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
