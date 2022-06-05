import 'package:flutter/material.dart';
import 'package:movies_db/presentation/page_view_screens/page_view_component.dart';

class SecondPageViewScreen extends StatelessWidget {
  const SecondPageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageViewComponent(
      text: 'Смотрят сейчас',
      image: 'assets/images/sliver_test_image_2.png',
    );
  }
}
