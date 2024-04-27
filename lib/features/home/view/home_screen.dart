import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:expense_tracker_app/features/home/home.dart';
import 'package:expense_tracker_app/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        // appBar: AppBar(),
        body: const MainScreen(),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,

            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: theme.primaryColor,
            unselectedItemColor: theme.hintColor,
            // elevation: 3,
            currentIndex: _selectedPageIndex,
            onTap: _openPage,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.home),
                label: S.of(context).home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.graph_square_fill),
                label: S.of(context).stats,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // AutoRouter.of(context).push(const SettingsRoute());
          },
          shape: const CircleBorder(),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.tertiary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.primary,
                  ],
                  transform: const GradientRotation(pi / 4),
                )),
            child: const Icon(CupertinoIcons.add),
          ),
        ));
  }

  void _openPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
}
