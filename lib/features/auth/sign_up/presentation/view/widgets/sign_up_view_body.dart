import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/theme/text_theme_app.dart';
import '../../../../login/presentation/view/login_view.dart';
import 'display_message_in_bottom_you_have_account_or_not.dart';
import 'display_registration_methods.dart';
import 'form_sign_up.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Create Account",style: TextThemeApp.font36BlackExtraBold,),
                const SizedBox(height: 10),
                Text("Sign up to get Started!",style: TextThemeApp.font15greyRegular),
                const SizedBox(height: 25),
                const FormSignUp(),
                const SizedBox(height: 25),
                const DisplayRegistrationMethods(
                  titleButtonWithEmail: "Sign Up",
                  titleButtonApple: "Sign Up Using Apple",
                  titleButtonGoogle: "Sign Up Using Google",
                ),
                const Spacer(),
                const DisplayMessageInBottomYouHaveAccountOrNot(question: "Already Member?", actionName: "Login", routeName: LoginView.routeName),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
