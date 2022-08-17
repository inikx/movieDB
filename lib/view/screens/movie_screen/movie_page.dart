import 'package:flutter/material.dart';
import 'package:movies_db/view/screens/movie_screen/widgets/info_container.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/test_movie_poster_image_2.png'),fit: BoxFit.cover)
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: InfoContainer(
              title: 'Fight Club',
              description: 'Washed-up MMA fighter Cole Young (Lewis Tan) is chosen to fight for Earth against evil would-be conquerors from other realms in Mortal Kombat, a once-in-a-generation tournament.',
            ),
          ),

          SliverToBoxAdapter(
            child: Expanded(
              child: Text('Пивчик'),
            ),
          )

        ],
      ),
    );
  }
}
