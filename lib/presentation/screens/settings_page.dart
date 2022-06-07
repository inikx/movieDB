import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_db/core/theme/text_theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Найстроки',style: AppTextStyle.headerStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: Column(

        ),
      ),

    );
  }
}
