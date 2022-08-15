import 'package:flutter/material.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05
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

              addVerticalSpace(MediaQuery.of(context).size.height * 0.04),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
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
