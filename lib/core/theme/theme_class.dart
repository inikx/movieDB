import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';

class AppTheme{

  static final lightTheme = ThemeData(
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

      bodyText1: TextStyle(

        color: Colors.black,
        fontSize: 18,

      ),
    )
  );

  static final darkTheme = ThemeData();

}