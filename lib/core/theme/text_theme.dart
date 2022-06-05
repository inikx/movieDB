import 'package:flutter/cupertino.dart';
import 'package:movies_db/core/theme/app_colors.dart';

abstract class AppTextStyle{

  static const TextStyle headerStyle = TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Color(0xffffffff));
  static const TextStyle movieTitleStyle = TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xffffffff));
  static const TextStyle navDrawerButtonStyle =  TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Color(0xffffffff));
  static const TextStyle movieSubTitleStyle =  TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff8b8b8b));
  static const TextStyle inputTextStyle = TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.secondaryColor,decoration: TextDecoration.none);

}