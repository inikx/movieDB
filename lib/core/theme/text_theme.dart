import 'package:movies_db/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle{

  static const TextStyle pageTextStyle = TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Color(0xffffffff),shadows:
  [
    Shadow(
    blurRadius: 10.0,
    color: Colors.black87,
    offset: Offset(5.0, 5.0),)
  ]);

  static const TextStyle headerStyle = TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Color(0xffffffff));
  static const TextStyle subHeaderStyle = TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Color(0xffffffff));
  static const TextStyle bodyTextStyle = TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white);


  static const TextStyle movieTitleStyle = TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xffffffff));
  static const TextStyle appFlatButtonStyle =  TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffffffff));
  static const TextStyle movieDateStyle =  TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff8b8b8b));
  static const TextStyle inputTextStyle = TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.secondaryColor,decoration: TextDecoration.none);
  static const TextStyle categoryTextStyle = TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.accentColor);
  static const TextStyle categoryTextStyleWithShadow = TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.accentColor,
      shadows:
      [
        Shadow(
          blurRadius: 10.0,
          color: Colors.black87,
          offset: Offset(5.0, 5.0),)
      ]
  );

}