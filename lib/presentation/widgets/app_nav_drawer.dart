import 'package:flutter/material.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/presentation/widgets/material_nav_drawer_button.dart';

class AppNavDrawer extends StatelessWidget {
  const AppNavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        backgroundColor: Colors.black87,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight:Radius.circular(20))),
        child: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              MaterialNaVDrawerButton(onButtonPressed: (){}, text: 'Найстройки'),
              addVerticalSpace(MediaQuery.of(context).size.height * 0.01),
              MaterialNaVDrawerButton(onButtonPressed: (){}, text: 'Найстройки'),
              addVerticalSpace(MediaQuery.of(context).size.height * 0.01),
              MaterialNaVDrawerButton(onButtonPressed: (){}, text: 'Найстройки'),

            ],
          ),
        ),
      ),
    );
  }
}
