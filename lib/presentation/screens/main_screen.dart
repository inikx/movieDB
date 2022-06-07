import 'package:flutter/material.dart';
import 'package:movies_db/presentation/screens/home_page.dart';
import 'package:movies_db/presentation/screens/search_page.dart';
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(

        index: _currentTabIndex,

        children: [

          SettingsPage(),
          HomePage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.blueGrey,
        child: BottomNavigationBar(

          onTap: _onBottomItemTap,
          currentIndex: _currentTabIndex,

          iconSize: 27,
          selectedFontSize: 15,
          selectedItemColor: AppColors.accentColor,
          backgroundColor: Colors.black54,
          unselectedItemColor: AppColors.secondaryColor,

          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Главная'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Поиск')
          ],
        ),
      ),
    );
  }
}
