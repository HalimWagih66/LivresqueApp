import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../model/frame_on_boarding_model.dart';
import 'frame_moving_part.dart';
import 'frame_on_boarding.dart';

class DisplayFramesViewBody extends StatefulWidget {
  const DisplayFramesViewBody({
    super.key,
  });
  @override
  State<DisplayFramesViewBody> createState() => _DisplayFramesViewBodyState();
}
class _DisplayFramesViewBodyState extends State<DisplayFramesViewBody> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 60.h, left: 30.w, right: 30.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 3,
            child: FrameOnBoardingPageViewBuilder(pageController: pageController),
          ),
          SizedBox(height: 106.h),
          FrameMovingPart(selectedDot: currentPage, pageController: pageController)
        ],
      ),
    );
  }
}

class FrameOnBoardingPageViewBuilder extends StatelessWidget {
  const FrameOnBoardingPageViewBuilder({
    super.key,
    required this.pageController,
  });

  final PageController pageController;
  final List<FrameOnBoardingModel> items = const [
    FrameOnBoardingModel(
        image: "assets/images/on_boarding/Frame_1.png",
        title: "Read your e-books",
        desc:
        "Contrary You can buy any books online. we will deliver the book within 2 days in tashkent3 days within Uzbekistan"),
    FrameOnBoardingModel(
        image: "assets/images/on_boarding/Frame_2.png",
        title: "Order your books",
        desc:
        "Contrary You can buy any books online. we will deliver the book within 2 days in tashkent3 days within Uzbekistan"),
    FrameOnBoardingModel(
        image: "assets/images/on_boarding/Frame_3.png",
        title: "Now you can listen audio books",
        desc:
        "We have vide range of audio books that you can enjoy listening books anytime, anywhere"),
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
        itemBuilder: (context, index) => FrameOnBoarding(frameOnBoardingModel: items[index],),
        itemCount: items.length);
  }
}
