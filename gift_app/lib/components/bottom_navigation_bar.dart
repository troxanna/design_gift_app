import 'package:flutter/material.dart';
import 'package:gift_app/theme/theme.dart';

class BottomNavifationBar extends StatefulWidget {
  /// Creates the demo page for [FadeThroughTransition].
  const BottomNavifationBar({super.key});

  @override
  State<BottomNavifationBar> createState() => _BottomNavifationBarState();
}

class _BottomNavifationBarState extends State<BottomNavifationBar> {
  int pageIndex = 0;

  List<Widget> pageList = <Widget>[
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.of(context).colorScheme.background.tertiary,
      child: BottomNavigationBar(
          currentIndex: pageIndex,
          backgroundColor: AppTheme.of(context).colorScheme.background.primary,
          iconSize: AppTheme.of(context).icons.sizes.size22,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              activeIcon: Icon(Icons.shopping_bag_rounded),
              label: '',
            )
          ],
          onTap: (int newValue) {
            setState(() {
              pageIndex = newValue;
            });
          }),
    );
  }
}
