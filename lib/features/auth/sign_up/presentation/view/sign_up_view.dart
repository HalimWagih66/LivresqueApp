import 'package:flutter/material.dart';
import 'package:livresque_app/core/utils/widgets/app_bar/custom_app_bar.dart';
import 'package:livresque_app/features/auth/sign_up/presentation/view/widgets/sign_up_view_body.dart';
import 'package:livresque_app/features/on%20boarding/get%20started/presentation/view/get_started_view.dart';

class SignUpView extends StatelessWidget  {
  const SignUpView({super.key});
  static const routeName = "/SignUpView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onTap: () {
        Navigator.pushReplacementNamed(context, GetStartedView.routeName);
      },iconData: Icons.arrow_back_ios),
      body: const SignUpViewBody(),
    );
  }
}

