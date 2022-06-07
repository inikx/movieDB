import 'package:flutter/material.dart';
import 'package:movies_db/core/theme/app_colors.dart';
import 'package:movies_db/core/theme/text_theme.dart';

class AppFloatingButton extends StatelessWidget {

  final Function onButtonPressed;
  final String text;
  final IconData icon;

  AppFloatingButton({Key? key, required this.onButtonPressed, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onButtonPressed(),


      shape: StadiumBorder(),

      elevation: 2,
      icon: Image.asset('assets/icons/play-button.png',scale: 18,color: AppColors.secondaryColor),
      backgroundColor: AppColors.accentColor,
      label: Text('Смотреть трейлер'),

    );
  }
}
