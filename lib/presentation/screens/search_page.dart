import 'package:flutter/material.dart';
import 'package:movies_db/presentation/widgets/all_movies_list.dart';
import '../../core/theme/text_theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black54,
        title: Text('Поиск',style: AppTextStyle.headerStyle),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: AllMoviesList(),
      ),
    );
  }
}
