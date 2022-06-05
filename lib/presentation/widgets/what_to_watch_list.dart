import 'package:flutter/material.dart';
import '../../core/theme/text_theme.dart';
import '../../core/utils/helper_widgets.dart';
import 'movie_list_view.dart';

class WhatToWatchList extends StatelessWidget {
  const WhatToWatchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Что посмотреть?',style: AppTextStyle.headerStyle),
          addVerticalSpace(20),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: MovieListView(),
          )
        ],
      ),
    );
  }
}
