import 'package:flutter/material.dart';
import 'package:livresque_app/features/on%20boarding/presentation/view/widget/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const routeName = "OnBoardingView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
