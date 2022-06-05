import 'package:flutter/material.dart';
import 'package:movies_db/presentation/page_view_screens/page_view_component.dart';

class FirstPageViewScreen extends StatelessWidget {
  const FirstPageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageViewComponent(
      text: 'Новинки месяца',
      image: 'assets/images/sliver_test_image.png',
    );
  }
}
