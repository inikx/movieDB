import 'package:flutter/material.dart';
import 'package:movies_db/presentation/screens/home_page.dart';
import 'package:movies_db/presentation/screens/profile_page.dart';
import 'package:movies_db/presentation/screens/settings_page.dart';

import '../../core/theme/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentTabIndex = 1;

  void _onBottomItemTap(int index){
    setState(() {
      _currentTabIndex = index;
    });
  }

  List<Widget> _pages = [SettingsPage(),HomePage(),ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentTabIndex],
      bottomNavigationBar: Container(
          decoration:  const BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black, spreadRadius: 1, blurRadius: 10,offset: Offset(0, -2)),
            ],
          ),
          child: BottomNavigationBar(

            onTap: _onBottomItemTap,
            currentIndex: _currentTabIndex,

            iconSize: 27,
            selectedFontSize: 15,
            selectedItemColor: AppColors.accentColor,
            backgroundColor: Colors.black.withOpacity(0.9),
            unselectedItemColor: AppColors.secondaryColor,

            items:const [
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Главная'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль')
            ],
          )
      ),
    );
  }
}
