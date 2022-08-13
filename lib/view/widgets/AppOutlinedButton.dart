import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const AppOutlinedButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        child: Text(
          text
        )
    );
  }
}
