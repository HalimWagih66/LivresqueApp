
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livresque_app/core/utils/theme/text_theme_app.dart';
import '../../../sign_up/presentation/view/sign_up_view.dart';
import '../../../sign_up/presentation/view/widgets/display_message_in_bottom_you_have_account_or_not.dart';
import '../../../sign_up/presentation/view/widgets/display_registration_methods.dart';
import 'log_in_from.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back",style: TextThemeApp.font36BlackExtraBold),
                const SizedBox(
                  height: 10,
                ),
                Text("Enter Your Credential to continue",style: TextThemeApp.font15greyRegular),
                const SizedBox(
                  height: 15,
                ),
                const LogInFrom(),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                      },
                      child: Text("Forget Password?",style: TextThemeApp.font15LightBlueRegular,)
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                const DisplayRegistrationMethods(
                  titleButtonWithEmail: "Log in",
                  titleButtonApple: "Log in Using Apple",
                  titleButtonGoogle: "Log in Using Google",
                ),
                const SizedBox(height: 10),
                const Spacer(),
                const DisplayMessageInBottomYouHaveAccountOrNot(question: "Don't have account?", actionName: "Sign Up", routeName: SignUpView.routeName),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
