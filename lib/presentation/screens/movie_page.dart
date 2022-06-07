import 'package:flutter/material.dart';
import 'package:movies_db/core/theme/app_colors.dart';
import 'package:movies_db/core/theme/text_theme.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/presentation/widgets/app_container.dart';
import 'package:movies_db/presentation/widgets/home_page_app_container.dart';
import 'package:movies_db/presentation/widgets/app_material_button.dart';

import 'main_screen.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: CustomScrollView(
        slivers: [

          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.transparent,
            title: Text('Matrix',style: AppTextStyle.pageTextStyle),
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(image: AssetImage('assets/images/test_movie_poster_image_3.png'),fit: BoxFit.cover,),
            ),
          ),

          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,

                children: [

                  AppContainer(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: AppFloatingButton(onButtonPressed: (){}, text: 'Привет', icon: Icons.sunny)),
                  ),

                  AppContainer(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Описание',style: AppTextStyle.headerStyle),

                          addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',style: AppTextStyle.bodyTextStyle,)

                        ],
                      )
                  ),

                  AppContainer(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Описание',style: AppTextStyle.headerStyle),

                          addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',style: AppTextStyle.bodyTextStyle,)

                        ],
                      )
                  )

                ],
              ),
            ),
          )

        ],
      ),


    );
  }
}
