import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_db/core/theme/theme_class.dart';
import 'package:movies_db/view/screens/main_screen.dart';
import 'package:movies_db/view/screens/on_boarding_screens/on_boarding.dart';
import 'package:movies_db/view/screens/registration_&_login_screens/authorization_screen.dart';

import 'view/screens/home_screen/home_page.dart';
import 'view/screens/movie_screen/movie_page.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black.withOpacity(0.95),
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: AuthScreen(),
    );
  }
}


