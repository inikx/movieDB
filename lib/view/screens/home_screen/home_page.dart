import 'package:flutter/material.dart';
import 'package:movies_db/view/screens/home_screen/widgets/custom_container.dart';
import 'package:movies_db/view/widgets/custom_sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(

      slivers: [

        CustomSliverAppBar(
          title: 'Home',
        ),

        SliverToBoxAdapter(
          child: CustomContainer(
            header: 'Top 10 Movies This Week',
          ),
        ),

        SliverToBoxAdapter(
          child: CustomContainer(
            header: 'New Releases',
          ),
        ),

        SliverToBoxAdapter(
          child: CustomContainer(
            header: 'New Releases',
          ),
        )

      ],
    );
  }
}
