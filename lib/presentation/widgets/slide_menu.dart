import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SlideMenu extends StatefulWidget {
  const SlideMenu({super.key});

  @override
  State<SlideMenu> createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
  int navDrawerIndex = 0;
  String textMain = appMenuItems[0].title;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top;
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) => setState(() {
              navDrawerIndex = value;
              textMain = appMenuItems[value].title;
            }),
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch * 0.50, 16, 10),
            child: Text(textMain),
          ),
          ...appMenuItems.map((e) => NavigationDrawerDestination(
              icon: Icon(e.icon), label: Text(e.title)))
        ]);
  }
}
