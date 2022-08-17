import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/widgets/app_material_button.dart';
import 'package:movies_db/view/widgets/custom_input_field.dart';
import 'package:movies_db/view/widgets/custom_sliver_app_bar.dart';
import 'package:movies_db/view/widgets/movie_card.dart';

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

        SliverAppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.08,
          elevation: 2,
          floating: true,
          title: Row(
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
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.03,
                MediaQuery.of(context).size.height * 0.02,
                MediaQuery.of(context).size.width * 0.03,
                1
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Expanded(
                  child:GridView.builder(
                    itemCount: 20,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5/2
                    ),
                    itemBuilder: (context,index) => Padding(
                      padding: const EdgeInsets.all(5),
                      child: MovieCard(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                )
              ),
            ),
          ),
        ),

      ],
    );
  }
}
