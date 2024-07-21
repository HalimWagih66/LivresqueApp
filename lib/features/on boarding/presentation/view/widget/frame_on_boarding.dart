import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livresque_app/features/on%20boarding/model/frame_on_boarding_model.dart';

class FrameOnBoarding extends StatelessWidget {
  const FrameOnBoarding({
    super.key, required this.frameOnBoardingModel,
  });
  final FrameOnBoardingModel frameOnBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(frameOnBoardingModel.image),
        SizedBox(height: 25.h),
        Text(frameOnBoardingModel.title,style: Theme.of(context).textTheme.titleMedium,),
        SizedBox(height: 17.h),
        Text(frameOnBoardingModel.desc,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}

