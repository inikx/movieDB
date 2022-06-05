import 'package:flutter/material.dart';
import 'package:movies_db/core/theme/text_theme.dart';

class MaterialNaVDrawerButton extends StatelessWidget {

  final Function onButtonPressed;
  final String text;


   MaterialNaVDrawerButton({Key? key, required this.onButtonPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      onPressed: onButtonPressed(),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(text,style: AppTextStyle.navDrawerButtonStyle),

          const Icon(Icons.arrow_forward_ios,color: Colors.white,)

        ],

      ),

    );
  }
}
