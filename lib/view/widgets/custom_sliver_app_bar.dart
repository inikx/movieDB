import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {

  final String title;

  const CustomSliverAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 2,
      floating: true,
      title: Text(title,style: Theme.of(context).textTheme.headline1),
      centerTitle: false,
      titleSpacing: MediaQuery.of(context).size.width * 0.04, // Костыль
      // expandedHeight: MediaQuery.of(context).size.height * 0.4,

      // flexibleSpace: FlexibleSpaceBar(
      //   background: Container(
      //     height: MediaQuery.of(context).size.height,
      //     decoration: const BoxDecoration(
      //       image: DecorationImage(
      //         fit: BoxFit.cover,
      //         image: AssetImage('assets/images/sliver_test_image.png')
      //       )
      //     ),
      //   ),
      // ),
    );
  }
}
