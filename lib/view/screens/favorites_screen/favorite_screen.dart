import 'package:flutter/material.dart';
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

        CustomSliverAppBar(
          title: 'Favorites',
        ),

      ],
    );
  }
}
