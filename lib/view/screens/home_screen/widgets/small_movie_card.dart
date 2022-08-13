import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';

class SmallMovieCard extends StatefulWidget {
  const SmallMovieCard({Key? key}) : super(key: key);

  @override
  State<SmallMovieCard> createState() => _SmallMovieCardState();
}

class _SmallMovieCardState extends State<SmallMovieCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.03
      ),
      child: Container(

        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.height * 0.17,
        clipBehavior: Clip.hardEdge,


        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('assets/images/test_movie_poster_image_2.png',)
          )
        ),
        child: Align(
          alignment: const Alignment(-0.8, -0.9),
          child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
              
              decoration: BoxDecoration(
                  color: accentColor,
                  borderRadius: BorderRadius.circular(10)
              ),

              child: const Text('9.8',style: TextStyle(color: Colors.white,fontSize: 13))
          ),
        ),
      ),
    );
  }
}
