import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/screens/movie_screen/movie_page.dart';
import 'package:movies_db/view/widgets/movie_card.dart';

class CustomContainer extends StatelessWidget {

  final String header;

  const CustomContainer({Key? key, required this.header}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.01
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.32,

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(header,style: Theme.of(context).textTheme.headline2),
                  TextButton(onPressed: (){}, child: Text('See all',style: const TextStyle(color: accentColor,fontSize: 16)))
                ],
              ),
            ), //Header

            addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

            Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.02
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index) => GestureDetector(
                      onTap: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => MovieScreen())),
                      child: MovieCard(
                        leftPadding: true,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                    )
                )
            )

          ],
        ),

      ),
    );
  }
}
