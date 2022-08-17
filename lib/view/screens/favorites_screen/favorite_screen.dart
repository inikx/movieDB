import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/widgets/custom_sliver_app_bar.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(

      slivers: [

        const CustomSliverAppBar(
          title: 'Favorites',
        ),
        
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.06
            ),
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage('assets/icons/list.png'),width: 150,height: 150,color: accentColor),
                addVerticalSpace(MediaQuery.of(context).size.height * 0.02),
                Text('Your favorites are empty',style: Theme.of(context).textTheme.headline2,),
                addVerticalSpace(MediaQuery.of(context).size.height * 0.01),
                Text("It seems that you haven't added any movies to the list",style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.center,)
              ],
            ),
          ),
        )

      ],
    );
  }
}
