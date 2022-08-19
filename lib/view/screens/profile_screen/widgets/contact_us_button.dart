import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';

class ContactUsButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String icon;
  final String text;

  const ContactUsButton({Key? key, required this.onPressed, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.03
      ),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.03,
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(20)
        ),
        onPressed: onPressed,
        color: const Color(0xfff5f5f5),
        child: Row(
          children: [
            ImageIcon(
              AssetImage(icon),
              size: 25,
              color: accentColor,
            ),

            addHorizontalSpace(MediaQuery.of(context).size.width * 0.04),

            Text(text,style: Theme.of(context).textTheme.headline2)
          ],
        ),
      ),
    );
  }
}
