import 'package:flutter/material.dart';
import '../../core/theme/text_theme.dart';

class PageViewComponent extends StatelessWidget {

  final TextStyle PageTextStyle = const TextStyle(fontSize: 25,fontWeight: FontWeight.w900,color: Color(0xffffffff),shadows: [
    Shadow(
      blurRadius: 10.0,
      color: Colors.black87,
      offset: Offset(5.0, 5.0),)
  ]);

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

      child: Center(child: Text(text,style: PageTextStyle,)),

    );
  }
}
