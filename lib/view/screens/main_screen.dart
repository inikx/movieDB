import 'package:flutter/material.dart';
import 'package:movies_db/view/screens/home_screen/home_page.dart';
import 'package:movies_db/view/screens/movie_screen/movie_page.dart';
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

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currentIndex,
        onTap: _onTabChanged,

        items: const [

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Explore'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks_outlined),
              label: 'Favorites'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile'
          )

        ],
      ),

    );
  }
}
