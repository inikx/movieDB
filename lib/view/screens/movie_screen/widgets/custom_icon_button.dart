import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String icon;

  const CustomIconButton({Key? key, required this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20,
        onPressed: onPressed,
        icon: ImageIcon(
          AssetImage(icon),
          size: 20,
        )
    );
  }
}
