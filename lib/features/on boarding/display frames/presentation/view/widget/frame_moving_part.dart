import 'package:flutter/material.dart';
import 'package:livresque_app/features/on%20boarding/get%20started/presentation/view/get_started_view.dart';
import 'custom_elevated_button.dart';
import 'list_dots.dart';

class FrameMovingPart extends StatelessWidget {
  const FrameMovingPart({
    super.key, required this.selectedDot, required this.pageController,
  });
  final PageController pageController;
  final int selectedDot;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, GetStartedView.routeName);
            },
        child: Text("Skip",style:Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey))),
        ListDots(selectedItem: selectedDot),
        CustomElevatedButton(onPressed: () {
          pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInToLinear);
        },background: const Color(0xff8599ff),text: "Next",
        )
      ],
    );
  }
}

