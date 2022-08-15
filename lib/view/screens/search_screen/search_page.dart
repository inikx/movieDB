import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/widgets/app_material_button.dart';
import 'package:movies_db/view/widgets/custom_input_field.dart';
import 'package:movies_db/view/widgets/custom_sliver_app_bar.dart';
import 'package:movies_db/view/widgets/small_movie_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(

      slivers: [

        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.05,
                MediaQuery.of(context).size.height * 0.02,
                MediaQuery.of(context).size.width * 0.05,
                1
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomInputField(
                          width: MediaQuery.of(context).size.width * 0.7,
                          hint: 'Search',
                          icon: Icons.search
                      ),
                      IconButton(
                          onPressed: (){},
                          splashRadius: 25,
                          icon: const Icon(
                            Icons.sort,
                            size: 30,
                            color: accentColor,
                          )
                      ),
                    ],
                  ),

                  addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

                  Expanded(
                      child:GridView.builder(
                        itemCount: 20,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemBuilder: (context,index) => MovieCard(
                          height: 100,
                          width: 100,
                        ),
                    )
                  ),
                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}
