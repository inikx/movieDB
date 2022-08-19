import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/screens/profile_screen/widgets/help_center.dart';
import 'package:movies_db/view/screens/profile_screen/widgets/privacy_policy.dart';
import 'package:movies_db/view/screens/profile_screen/widgets/profile_screen_button.dart';
import 'package:movies_db/view/widgets/custom_sliver_app_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>{

  bool switched = false;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const CustomSliverAppBar(title: 'Profile'),

        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: accentColor,
                  // child: Align(
                  //   alignment: Alignment.bottomRight,
                  //   child: SizedBox(
                  //     width: 35,
                  //     height: 35,
                  //     child: MaterialButton(
                  //       onPressed: () {  },
                  //       color: accentColor,
                  //       shape: StadiumBorder(),
                  //       child: Icon(Icons.camera_alt_outlined,size: 14,),
                  //     ),
                  //   ),
                  // )
                ),
                addVerticalSpace(MediaQuery.of(context).size.height * 0.02),
                Text('Andrew Ainsley',style: Theme.of(context).textTheme.headline2),
                addVerticalSpace(MediaQuery.of(context).size.height * 0.01),
                Text('ander_ainsley@gmail.com',style: Theme.of(context).textTheme.bodyText1),

              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Column(
            children: [
              ProfilePageButton(
                  onPressed: () {  },
                  text: 'Edit profile',
                  icon: Icons.person_outline
              ),
              ProfilePageButton(
                  onPressed: () {  },
                  text: 'Notification',
                  icon: Icons.notifications_none_outlined
              ),
              ProfilePageButton(
                  onPressed: () {  },
                  text: 'Language',
                  icon: Icons.language
              ),
              ProfilePageButton(
                  onPressed: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const PrivacyPolicy())),
                  text: 'Privacy policy',
                  icon: Icons.info_outline,
              ),
              ProfilePageButton(
                onPressed: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context)=> const HelpCenter())),
                text: 'Help Center',
                icon: Icons.info_outline,
              ),
              ProfilePageButton(
                  onPressed: () {  },
                  text: 'Dark Mode',
                  icon: Icons.wb_sunny_outlined,
                  child: Switch(
                    activeColor: accentColor,
                    value: switched,
                    onChanged: (bool value) {
                      setState(() {
                        switched = value;
                      });
                    },
                  ),
              ),
              ProfilePageButton(
                onPressed: () {},
                color: accentColor,
                text: 'Logout',
                icon: Icons.exit_to_app,
                child: const SizedBox(),
              )
            ],
          ),
        )
      ],
    );
  }
}
