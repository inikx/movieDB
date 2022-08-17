import 'package:flutter/material.dart';
import 'package:movies_db/view/screens/favorites_screen/favorite_screen.dart';
import 'package:movies_db/view/screens/home_screen/home_page.dart';
import 'package:movies_db/view/screens/search_screen/search_page.dart';

import 'profile_screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  List<Widget> screensList = [
    HomePage(),
    SearchScreen(),
    FavouritesScreen(),
    ProfileScreen(),
  ];

  void _onTabChanged(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screensList[_currentIndex],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black54, blurRadius: 2)
            ]
        ),
        child: BottomNavigationBar(

          currentIndex: _currentIndex,
          onTap: _onTabChanged,
          backgroundColor: Colors.white,

          items: const [

            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/home.png'),
                  size: 25,
                ),
                label: 'Home'
            ),

            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/compass.png'),
                  size: 25,
                ),
                label: 'Explore'
            ),

            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/bookmark-variant.png'),
                  size: 25,
                ),
                label: 'Favorites'
            ),

            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/user.png'),
                  size: 25,
                ),
                label: 'Profile'
            )

          ],
        ),
      ),

    );
  }
}
