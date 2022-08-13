import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';

class OnBoardingComponent extends StatelessWidget {

  final String header;
  final String description;
  final String? image;
  final String lottie;

  const OnBoardingComponent({Key? key, required this.header, required this.description, this.image,required this.lottie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.15,
        horizontal: MediaQuery.of(context).size.width * 0.05
      ),

      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      // decoration: BoxDecoration(
      //   image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
      // ),

      child: Column(

        mainAxisAlignment: MainAxisAlignment.end,

        children: [

          Lottie.asset(
            lottie,
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width
          ),
          
          addVerticalSpace(MediaQuery.of(context).size.height * 0.04),

          Text(header,style: Theme.of(context).textTheme.headline1),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.04),

          Text(description,style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,),

        ],
      ),
    );
  }
}
