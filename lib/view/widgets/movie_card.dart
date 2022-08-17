import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';

class MovieCard extends StatefulWidget {

  final bool? leftPadding;
  final double? height;
  final double? width;

  const MovieCard({Key? key, this.leftPadding, this.height, this.width}) : super(key: key);

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: widget.leftPadding == true ? MediaQuery.of(context).size.width * 0.03 : 0,
      ),
      child: Container(
        height: widget.height,
        width: widget.width,
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
