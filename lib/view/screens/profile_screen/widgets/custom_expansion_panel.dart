import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';

class CustomExpansionPanel extends StatelessWidget {

  final String title;
  final String description;

  const CustomExpansionPanel({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.02,
        bottom: MediaQuery.of(context).size.height * 0.01
      ),
      child: Container(
        decoration: ContainerDecoration(),
        padding: const EdgeInsets.all(20),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            iconColor: accentColor,
            collapsedIconColor: accentColor,
            title: AutoSizeText(title,style: Theme.of(context).textTheme.headline2,maxLines: 1),
            children: [
              const Divider(color: Colors.black38),
              addVerticalSpace(MediaQuery.of(context).size.height * 0.02),
              Text(description,style: Theme.of(context).textTheme.bodyText1,)
            ],
          ),
        ),
      ),
    );
  }
}

BoxDecoration ContainerDecoration(){
  return BoxDecoration(
    color: accentColor.withOpacity(0.1),
    borderRadius: BorderRadius.circular(20),
  );
}
