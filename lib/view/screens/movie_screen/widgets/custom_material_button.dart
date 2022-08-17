import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';

class MaterialButtonWithIcon extends StatelessWidget {

  final String icon;
  final String text;
  final VoidCallback onPressed;

  const MaterialButtonWithIcon({Key? key, required this.icon, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.012
      ),
      color: accentColor,
      shape: StadiumBorder(),
      onPressed: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(AssetImage(icon),color: Colors.white),
          addHorizontalSpace(MediaQuery.of(context).size.width * 0.03),
          Text(text,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20))
        ],
      ),
    );
  }
}
