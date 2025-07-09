import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/view/dashboard/hometab_screen.dart';
import 'package:better_u_news/view/dashboard/journeytab_screen.dart';
import 'package:better_u_news/view/dashboard/miratab_screen.dart';
import 'package:better_u_news/view/dashboard/programstab_screen.dart';
import 'package:better_u_news/view/dashboard/shoptab_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({super.key});

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> {

  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      HometabScreen(),
      JourneytabScreen(),
      MiratabScreen(),
      ProgramstabScreen(),
      ShoptabScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: AppColor.clr_000000,
        inactiveColorPrimary: AppColor.clr_D5D7DA,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.noise_aware),
        title: ("Journey"),
        activeColorPrimary: AppColor.clr_000000,
        inactiveColorPrimary: AppColor.clr_D5D7DA,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat_bubble_outlined),
        title: ("Mira"),
        activeColorPrimary: AppColor.clr_000000,
        inactiveColorPrimary: AppColor.clr_D5D7DA,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.speaker_notes),
        title: ("Programs"),
        activeColorPrimary: AppColor.clr_000000,
        inactiveColorPrimary: AppColor.clr_D5D7DA,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart),
        title: ("Shop"),
        activeColorPrimary: AppColor.clr_000000,
        inactiveColorPrimary: AppColor.clr_D5D7DA,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style3,
    );
  }

}
