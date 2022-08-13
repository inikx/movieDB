import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {

  final VoidCallback onPressed;
  final Widget? child;

  const AppOutlinedButton({Key? key, required this.onPressed, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: Colors.grey
        )
      ),

      child: child,
    );
  }
}
