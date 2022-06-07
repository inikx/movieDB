import 'package:flutter/material.dart';
import '../../core/theme/text_theme.dart';

class PageViewComponent extends StatelessWidget {

  final String image;
  final String text;

  const PageViewComponent({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image))
      ),

      child: Center(child: Text(text,style: AppTextStyle.pageTextStyle,)),

    );
  }
}
