import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';

class AppMaterialButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;

  const AppMaterialButton({Key? key, required this.text, required this.onPressed, this.backgroundColor, this.textColor, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      onPressed: onPressed,

      padding: const EdgeInsets.all(16),
      color: backgroundColor ?? accentColor,
      elevation: 0,
      minWidth: width ?? MediaQuery.of(context).size.width,

      shape: const StadiumBorder(),

      child: Text(
          text,
          style: TextStyle(color: textColor ?? Colors.white,fontSize: 16,fontWeight: FontWeight.w600)
      ),
    );
  }
}
