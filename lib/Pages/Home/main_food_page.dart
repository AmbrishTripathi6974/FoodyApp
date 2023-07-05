import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foody/Pages/Home/home_page.dart';
import 'package:foody/utils/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  int _selectedIndex = 0;
  late PersistentTabController _controller;

  List pages = [
    HomePage(),
    Container(
      child: Center(child: Text("Next Page")),
    ),
    Container(
      child: Center(child: Text("Next next Page")),
    ),
    Container(
      child: Center(child: Text("Next next next Page")),
    ),
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.dispose();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      Container(
        child: Center(child: Text("Next Page")),
      ),
      Container(
        child: Center(child: Text("Next next Page")),
      ),
      Container(
        child: Center(child: Text("Next next next Page")),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(EvaIcons.homeOutline),
        title: ("Home"),
        activeColorPrimary: AppColors.mainColor,
        inactiveColorPrimary: AppColors.paraColor1,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(EvaIcons.archiveOutline),
        title: ("Archive"),
        activeColorPrimary: AppColors.mainColor,
        inactiveColorPrimary: AppColors.paraColor1,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(EvaIcons.shoppingCartOutline),
        title: ("Cart"),
        activeColorPrimary: AppColors.mainColor,
        inactiveColorPrimary: AppColors.paraColor1,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(EvaIcons.personOutline),
        title: ("Person"),
        activeColorPrimary: AppColors.mainColor,
        inactiveColorPrimary: AppColors.paraColor1,
      ),
    ];
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: pages[_selectedIndex],
  //     bottomNavigationBar: BottomNavigationBar(
  //       selectedItemColor: AppColors.mainColor,
  //       unselectedItemColor: Colors.amberAccent,
  //       showSelectedLabels: false,
  //       showUnselectedLabels: false,
  //       selectedFontSize: 0.0,
  //       unselectedFontSize: 0.0,
  //       currentIndex: _selectedIndex,

  //       onTap: onTapNav,
  //       items: const [
  //       BottomNavigationBarItem(
  //           icon: Icon(EvaIcons.homeOutline), label: "Home"),
  //       BottomNavigationBarItem(
  //           icon: Icon(EvaIcons.archiveOutline), label: "Histroy"),
  //       BottomNavigationBarItem(
  //           icon: Icon(EvaIcons.shoppingCartOutline), label: "Cart"),
  //       BottomNavigationBarItem(
  //           icon: Icon(EvaIcons.personOutline), label: "Me"),
  //     ]),
  //   );
  // }

  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }
}
