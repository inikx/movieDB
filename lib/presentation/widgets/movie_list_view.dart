import 'package:flutter/material.dart';
import 'package:movies_db/core/theme/text_theme.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import '../../core/models/movies.dart';

class MovieListView extends StatelessWidget {
  MovieListView({Key? key}) : super(key: key);

  final _movies = [
    Movie('Fight club','Drama','assets/images/test_movie_poster_image_2.png'),
    Movie('Matrix','Action','assets/images/test_movie_poster_image_3.png'),
    Movie('Rush','Drama','assets/images/test_movie_poster_image_4.png'),
    Movie('Rush','Drama','assets/images/test_movie_poster_image_2.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),

      itemCount: _movies.length,

      itemBuilder: (BuildContext context,int index){

        final movie = _movies[index];

        return Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04),

        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.25,
            clipBehavior: Clip.hardEdge,
            decoration: MovieContainerDecoration(),

            child: Column(
              mainAxisSize: MainAxisSize.max,

              children: [
                Container(

                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      )
                    ]
                  ),

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(movie.imagePath))
                ),

                addVerticalSpace(5),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Text(movie.title,style: AppTextStyle.movieTitleStyle,maxLines: 2,overflow: TextOverflow.ellipsis),

                      Text(movie.categorie,style: AppTextStyle.movieSubTitleStyle,maxLines: 1,overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ],
            )
          ),
        );
      }
    );
  }
}

BoxDecoration MovieContainerDecoration(){
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.orange,
  );
}