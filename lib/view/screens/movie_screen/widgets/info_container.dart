import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/screens/movie_screen/widgets/custom_icon_button.dart';
import 'package:movies_db/view/screens/movie_screen/widgets/custom_material_button.dart';
import 'package:movies_db/view/widgets/app_material_button.dart';

class InfoContainer extends StatefulWidget {

  final String title;
  final String description;
  final String? year;

  List<String> genreList = ['Action','Thriller','Fight'];

  InfoContainer({Key? key, required this.title, required this.description, this.year}) : super(key: key);

  @override
  State<InfoContainer> createState() => _InfoContainerState();
}

class _InfoContainerState extends State<InfoContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                  child: AutoSizeText(
                      widget.title,
                      style: Theme.of(context).textTheme.headline3,
                      maxLines: 1,overflow: TextOverflow.ellipsis
                  )
              ),

              Row(
                children: [
                  CustomIconButton(
                      onPressed: (){},
                      icon: 'assets/icons/bookmark-variant.png'
                  ),
                  CustomIconButton(
                      onPressed: (){},
                      icon: 'assets/icons/send.png'
                  )
                ],
              ),
            ],
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.01),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.genreList.length,
                itemBuilder: (context,index) =>
                    Text(
                      '${widget.genreList[index]}.  ',
                      style: Theme.of(context).textTheme.headline2,
                    )
            ),
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.01),

          MaterialButtonWithIcon(
            onPressed: (){},
            icon: 'assets/icons/play-button.png',
            text: 'Play',
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.01),

          Center(
            child: Column(
              children: [
                Text('1h 49 m',style: Theme.of(context).textTheme.headline2,),
              ],
            ),
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

          Text(widget.description,style: Theme.of(context).textTheme.bodyText1),

        ],
      ),
    );
  }
}
