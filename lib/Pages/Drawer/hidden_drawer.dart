import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:foody/Pages/Home/home_page.dart';
import '../settings_page.dart';


class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            );

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Homepage',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Settings',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,),
        SettingsPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 40,
      // contentCornerRadius: 40,
    );
  }
}
