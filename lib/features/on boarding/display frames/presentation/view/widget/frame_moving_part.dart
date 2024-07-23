import 'package:flutter/material.dart';
import 'package:livresque_app/features/on%20boarding/get%20started/presentation/view/get_started_view.dart';
import '../../../../../../core/utils/theme/text_theme_app.dart';
import '../../../../../../core/utils/widgets/buttons/custom_elevated_button.dart';
import 'list_dots.dart';

class FrameMovingPart extends StatelessWidget {
  const FrameMovingPart({
    super.key, required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, GetStartedView.routeName);
            },
        child: Text("Skip",style:  TextThemeApp.font17BlackMedium.copyWith(color: Colors.grey))),
        ListDots(currentPage: pageController.page?.round() ?? 0),
        CustomElevatedButton(onPressed: () {
          if(pageController.page?.round() != 2){
            pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInToLinear);
          }else{
            Navigator.pushReplacementNamed(context, GetStartedView.routeName);
          }
        },background: const Color(0xff8599ff),text: "Next",
        )
      ],
    );
  }
}

