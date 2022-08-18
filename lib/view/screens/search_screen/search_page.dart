import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/view/widgets/custom_input_field.dart';
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
      physics: const BouncingScrollPhysics(),

      slivers: [

        SliverAppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
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

        SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context,index) =>
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MovieCard(),
                      ),
              childCount: 20,

            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5/2
          ),

        )

      ],
    );
  }
}
