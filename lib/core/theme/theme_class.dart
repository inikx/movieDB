import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';

class AppTheme{

  static final lightTheme = ThemeData(

    scaffoldBackgroundColor: Colors.white,

    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 6,
          color: accentColor,
        ),
      ),
      labelColor: accentColor,
      unselectedLabelColor: Colors.grey,
      unselectedLabelStyle: TextStyle(
        fontSize: 18
      ),
      labelStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold
      )
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: accentColor,
      selectedIconTheme: IconThemeData(
        size: 28
      ),
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: TextStyle(
        color: Colors.grey
      ),
    ),

    textTheme: const TextTheme(
      headline1: TextStyle(

        color: accentColor,
        fontSize: 35,
        fontWeight: FontWeight.bold,

      ),

      headline2: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 20
      ),

      bodyText1: TextStyle(

        color: Colors.black,
        fontSize: 18,

      ),
    )
  );

  static final darkTheme = ThemeData();

}