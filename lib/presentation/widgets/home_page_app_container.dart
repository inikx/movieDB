import 'package:flutter/material.dart';
import 'package:movies_db/core/theme/text_theme.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';

class HomePageAppContainer extends StatelessWidget {

  final String text;
  final Widget child;

  const HomePageAppContainer({Key? key,required this.text,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.black45,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.33,
      padding: const EdgeInsets.symmetric(vertical: 15),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(
            children: [
              addHorizontalSpace(MediaQuery.of(context).size.width * 0.04),
              Text(text,style: AppTextStyle.headerStyle),
            ],
          ),

          addVerticalSpace(20),

          Expanded(child: child),

          addVerticalSpace(10),
        ],
      ),
    );
  }
}
