import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movies_db/core/constants/colors.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/screens/on_boarding_screens/on_boarding.dart';
import 'package:movies_db/view/screens/registration_&_login_screens/widgets/custom_input_field.dart';
import 'package:movies_db/view/widgets/app_material_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.06,
      ),

      child: Column(
        children: [

          const Text(
            "Let's you in",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600
            ),
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.06),

          const CustomInputField(
            hint: 'Email',
            icon: Icon(Icons.mail,color: accentColor),
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

          const CustomInputField(
            hint: 'Password',
            icon: Icon(Icons.lock,color: accentColor),
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.06),

          AppMaterialButton(
              text: 'Sign In',
              onPressed: () => Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => OnBoarding()))
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.06),

        ],
      ),
    );
  }
}
