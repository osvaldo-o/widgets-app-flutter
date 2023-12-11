import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SlideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SlideMenu({super.key, required this.scaffoldKey});

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
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
            textMain = appMenuItems[value].title;
          });
          GoRouter.of(context).push(appMenuItems[value].link);
          widget.scaffoldKey.currentState?.closeDrawer();
        },
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
