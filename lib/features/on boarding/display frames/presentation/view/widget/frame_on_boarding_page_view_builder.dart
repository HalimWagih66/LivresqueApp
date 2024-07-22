import 'package:flutter/material.dart';
import 'package:livresque_app/features/on%20boarding/display%20frames/model/frame_on_boarding_model.dart';
import 'frame_on_boarding.dart';

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