import 'package:flutter/material.dart';
import 'package:movies_db/view/screens/home_screen/widgets/custom_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(

      slivers: [

        SliverAppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          floating: true,
          title: Text('Home',style: Theme.of(context).textTheme.headline1),
          centerTitle: false,
          titleSpacing: MediaQuery.of(context).size.width * 0.04,
        ),

        const SliverToBoxAdapter(
          child: CustomContainer(
            header: 'Top 10 Movies This Week',
          ),
        ),

        const SliverToBoxAdapter(
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
