import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(
            color: accentColor,
          ),
        ),
      ),
    );
  }
}
