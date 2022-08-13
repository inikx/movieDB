import 'package:flutter/material.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/screens/registration_&_login_screens/registration_screen.dart';
import 'widgets/auth_page_layout.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2,vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.05
          ),

          child: Column(

            children: [

              TabBar(
                controller: _tabController,
                  tabs:const [
                    Tab(text: 'Login'),
                    Tab(text: 'Sign Up')
                  ]
              ),

              addVerticalSpace(MediaQuery.of(context).size.height * 0.06),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: _tabController,
                    children: const [

                      //loginPage
                      AuthPageComponent(
                        header: "Let's you in",
                        buttonText: 'Sign in',
                      ),
                      //loginPage

                      //registrationPage
                      AuthPageComponent(
                          header: "Create Your Account",
                          buttonText: "Sign Up"
                      )
                      //registrationPage
                    ]
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
