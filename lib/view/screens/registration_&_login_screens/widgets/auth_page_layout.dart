import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movies_db/core/utils/helper_widgets.dart';
import 'package:movies_db/view/screens/on_boarding_screens/on_boarding.dart';
import 'package:movies_db/view/widgets/app_material_button.dart';
import 'package:movies_db/view/widgets/app_outlined_button.dart';
import '../../../widgets/custom_input_field.dart';

class AuthPageComponent extends StatelessWidget {

  final String header;
  final String buttonText;
  final TextEditingController? emailFieldController;
  final TextEditingController? passwordFieldController;

  const AuthPageComponent({Key? key, this.emailFieldController, this.passwordFieldController, required this.header, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.06,
      ),

      child: Column(
        children: [

          Lottie.asset(
              'assets/lotties/movie_lottie_2.json',
              repeat: true,
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width
          ),

          AutoSizeText(
            header,
            maxLines: 1,
            style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600
            ),
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.06),

          CustomInputField(
            controller: emailFieldController,
            hint: 'Email',
            icon: Icons.mail,
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

          CustomInputField(
            controller: passwordFieldController,
            hint: 'Password',
            icon: Icons.lock,
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.06),

          AppMaterialButton(
              text: buttonText,
              onPressed: () => Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context) => OnBoarding()))
          ),

          addVerticalSpace(MediaQuery.of(context).size.height * 0.02),

          AppOutlinedButton(
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                const Image(image: AssetImage('assets/images/google_logo.png'),width: 20,height: 20,),
                addHorizontalSpace(10),
                const Text('Continue with Google')

              ],
            ),
          )
        ],
      ),
    );
  }
}
