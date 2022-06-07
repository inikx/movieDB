import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movies_db/core/theme/app_colors.dart';
import 'package:movies_db/core/theme/text_theme.dart';

class SearchTextField extends StatelessWidget {

  final TextEditingController controller;

  SearchTextField({Key? key, required this.controller}) : super(key: key);

  final FocusNode _textFieldFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),

      child: Container(
        decoration: InputContainerDecoration(),
        padding: const EdgeInsets.fromLTRB(16,10,16,0),
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width,

        child: TextField(
          controller: controller,
          cursorColor: AppColors.accentColor,
          style: const TextStyle(color: AppColors.accentColor,fontSize: 18),
          decoration: InputFieldDecoration(),
        ),
      ),
    );
  }
}

BoxDecoration InputContainerDecoration(){
  return BoxDecoration(
    boxShadow: const [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 1,
        spreadRadius: 3,
        offset: Offset(0,3),
      )
    ],
    borderRadius: BorderRadius.circular(20),
    color: AppColors.secondaryColor,
  );
}

InputDecoration InputFieldDecoration(){
  return const InputDecoration(
    icon: Icon(Icons.search,color: AppColors.accentColor),
    hintText: 'Введите название фильма',
    hoverColor: Colors.grey,
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none
  );
}

