import 'package:flutter/material.dart';
import 'package:movies_db/core/theme/app_colors.dart';
import 'package:movies_db/core/theme/text_theme.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({Key? key}) : super(key: key);

  final FocusNode _textFieldFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20,top: MediaQuery.of(context).size.height * 0.006),
      child: TextField(
        style: AppTextStyle.inputTextStyle,
        focusNode: _textFieldFocusNode,
        cursorColor: AppColors.accentColor,
        decoration: SearchTextFieldDecoration(),
      ),
    );
  }
}

InputDecoration SearchTextFieldDecoration(){
  return const InputDecoration(
      icon: Icon(Icons.search,color: Colors.white),
      iconColor: AppColors.accentColor,
      focusColor: AppColors.accentColor,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: AppColors.accentColor,
      )
    ),
      enabledBorder: InputBorder.none
  );
}


//    icon: Icon(Icons.search,color: Colors.white),