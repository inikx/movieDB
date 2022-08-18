import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/screens/movie_screen/widgets/info_container.dart';

class MovieScreen extends StatefulWidget {

  List<String> actorsList = ['Edward Norton','Brad Pitt','Zak Grin'];

  MovieScreen({Key? key}) : super(key: key);

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
            actions: [
              Row(
                children: [
                  const ImageIcon(
                    AssetImage('assets/icons/star.png'),
                    color: accentColor,
                  ),
                  addHorizontalSpace(MediaQuery.of(context).size.width * 0.02),
                  Text('9.8',style: TextStyle(color: accentColor,fontSize: 20,fontWeight: FontWeight.w700)),
                  addHorizontalSpace(MediaQuery.of(context).size.width * 0.04),
                ],
              )
            ],
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
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: widget.actorsList.length,
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) => Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04),
                    child: SizedBox(
                      child: Row(

                        children: [

                          CircleAvatar(
                            radius: 25,
                          ),

                          addHorizontalSpace(MediaQuery.of(context).size.width * 0.03),

                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: AutoSizeText(
                                widget.actorsList[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),



                        ],
                      ),
                    )
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}

