import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/screens/home_screen/home_page.dart';
import 'package:movies_db/view/screens/main_screen.dart';
import 'package:movies_db/view/screens/on_boarding_screens/on_boarding_component.dart';
import 'package:movies_db/view/widgets/app_material_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          PageView(
            controller: _pageController,
            children: const [

              OnBoardingComponent(
                header: 'Welcome to Mova',
                description: 'App to track your movie life',
                lottie: 'assets/lotties/movie_lottie.json',
              ),

              OnBoardingComponent(
                header: 'Track your progress',
                description: 'Add movies to your "watched-list" and track your total progress',
                lottie: 'assets/lotties/analysis_lottie.json',

              )

            ],
          ),

          Align(
            alignment: const Alignment(0, 0.75),
            child: SmoothPageIndicator(
              count: 2,
              controller: _pageController,

              effect: CustomizableEffect(

                  activeDotDecoration: DotDecoration(
                      width: MediaQuery.of(context).size.width * 0.08,
                      borderRadius: BorderRadius.circular(20),
                      color: accentColor
                  ),

                  dotDecoration: DotDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
              )

              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04
            ),
            child: Align(
              alignment: const Alignment(0, 0.9),
              child: AppMaterialButton(

                text: 'Get started',

                onPressed: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => MainScreen())),

              ),
            ),
          )


        ],
      ),
    );
  }
}
