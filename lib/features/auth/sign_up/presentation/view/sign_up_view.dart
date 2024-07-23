import 'package:flutter/material.dart';
import 'package:livresque_app/core/utils/widgets/app_bar/custom_app_bar.dart';
import 'package:livresque_app/core/utils/widgets/buttons/custom_text_button_use_under_line.dart';
import 'package:livresque_app/features/auth/sign_up/presentation/view/widgets/custom_elevated_button_in_auth.dart';
import 'package:livresque_app/features/auth/sign_up/presentation/view/widgets/display_sign_up_with_method.dart';
import 'package:livresque_app/features/auth/sign_up/presentation/view/widgets/form_sign_up.dart';
import 'package:livresque_app/features/on%20boarding/get%20started/presentation/view/get_started_view.dart';

import '../../../../../core/utils/theme/text_theme_app.dart';
import '../../../../../core/utils/widgets/buttons/custom_elevated_button.dart';

class SignUpView extends StatelessWidget  {
  const SignUpView({super.key});
  static const routeName = "SignUpView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onTap: () {
        Navigator.pushReplacementNamed(context, GetStartedView.routeName);
      },iconData: Icons.arrow_back_ios),
      body: SingleChildScrollView(
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
              CustomElevatedButton(
                  onPressed: () {
        
                  }, background:  Colors.yellow,
                  text:  "Sign Up"
              ),
              const SizedBox(height: 15),
              CustomElevatedButtonInAuth(
                  onPressed: () {
        
                  }, background: const Color(0xff000000),
                  child: const DisplaySignUpWithMethod(text: "Sign Up Using Apple", image: 'assets/images/auth/apple-logo.png',colorText: Colors.white,)
              ),
              const SizedBox(height: 15),
              CustomElevatedButtonInAuth(
                  onPressed: () {
        
                  }, background: const Color(0xfff0f5f2),
                  child: const DisplaySignUpWithMethod(text: "Sign Up Using Google", image: 'assets/images/auth/google-logo.png',)
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Member?",style: TextThemeApp.font15LightBlueRegular,),
                  CustomTextButtonUseUnderLine(onPressed: () {
        
                  }, text: "Login")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

