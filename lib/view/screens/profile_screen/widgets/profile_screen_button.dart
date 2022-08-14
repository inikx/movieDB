import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';

class ProfilePageButton extends StatelessWidget {

  final VoidCallback onPressed;
  final String text;
  final IconData icon;

  const ProfilePageButton({Key? key, required this.onPressed, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.06,
        vertical: MediaQuery.of(context).size.height * 0.01

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon,size: 32,),
              addHorizontalSpace(MediaQuery.of(context).size.width * 0.06),
              Text(
                text,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
          const Icon(Icons.arrow_forward_ios,color: appBlack,size: 20,)
        ],
      ),
    );
  }
}
