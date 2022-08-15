import 'package:flutter/material.dart';
import 'package:movies_db/view/widgets/custom_sliver_app_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(

      slivers: [

        CustomSliverAppBar(
          title: 'Search',
        ),

      ],
    );
  }
}
