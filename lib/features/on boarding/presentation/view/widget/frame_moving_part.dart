import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        Text("Skip",style:Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey)),
        ListDots(selectedItem: selectedDot),
        ElevatedButton(
            onPressed: () {
              pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInToLinear);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 13.w),
              backgroundColor: const Color(0xff40BFFF)
            ),
        child: Text("Next",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),))
      ],
    );
  }
}

