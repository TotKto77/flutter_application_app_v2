import 'package:flutter/material.dart';
import 'package:flutter_application_app_v2/locations_list_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'persons_list_screen.dart';
import './settings_screen.dart';
import 'constants/app_assets.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigatioState();
}

class _MyBottomNavigatioState extends State<MyBottomNavigation> {
  int _selectedPage = 0;
  static const List<Widget> _wigdgetOptions = <Widget>[
    PersonsListScreen(),
    LocationsListScreen(),
    SettingsScreen(),
  ];

  void onSelectPage(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: _wigdgetOptions[_selectedPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24,
              child: SvgPicture.asset(AppAssets.svg.charactersIcon),
            ),
            activeIcon: SizedBox(
              width: 24,
              child: SvgPicture.asset(
                AppAssets.svg.charactersIcon,
                color: Colors.blue,
              ),
            ),
            label: "Пеосонажи",
          ),
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 24,
                child: SvgPicture.asset(AppAssets.svg.episodIcon),
              ),
              activeIcon: SizedBox(
                width: 24,
                child: SvgPicture.asset(
                  AppAssets.svg.episodIcon,
                  color: Colors.blue,
                ),
              ),
              label: "Локаций"),
          BottomNavigationBarItem(
              icon: SizedBox(
                width: 24,
                child: SvgPicture.asset(AppAssets.svg.settingsIcon),
              ),
              activeIcon: SizedBox(
                width: 24,
                child: SvgPicture.asset(
                  AppAssets.svg.settingsIcon,
                  color: Colors.blue,
                ),
              ),
              label: "Настройки"),
        ],
        onTap: onSelectPage,
      ),
    );
  }
}
