import 'package:flutter/material.dart';
import 'package:movies_db/presentation/page_view_screens/page_view_component.dart';

class ThirdPageViewScreen extends StatelessWidget {
  const ThirdPageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageViewComponent(
      text: 'Современная классика',
      image: 'assets/images/sliver_test_image_3.png',
    );
  }
}
