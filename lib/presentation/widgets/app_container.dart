import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  
  final Widget child;
  final Color? color;

  const AppContainer({Key? key, required this.child, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.07,vertical: MediaQuery.of(context).size.width * 0.07),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color ?? Colors.black87,
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0,3)
          )
        ]
      ),

      child: child,
    );
  }
}

