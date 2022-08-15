import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';

class CustomInputField extends StatelessWidget {

  final String hint;
  final IconData icon;
  final TextEditingController? controller;

  const CustomInputField({Key? key,required this.hint,required this.icon, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      cursorColor: accentColor,
      decoration: textFieldDecoration(hint,icon),
    );
  }
}

InputDecoration textFieldDecoration(String hint,IconData icon){
  return InputDecoration(
    filled: true,
    fillColor: const Color(0xffdcdcdc),
    hintText: hint,
    hintStyle: const TextStyle(
      color: Colors.white,
      fontSize: 18
    ),
    icon: Icon(icon),
    iconColor: accentColor,

    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(15)
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(15)
    ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
        color: Colors.redAccent,
    )
    )
  );
}
