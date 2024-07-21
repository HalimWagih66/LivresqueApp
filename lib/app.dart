import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livresque_app/core/utils/theme.dart';
import 'package:livresque_app/features/on%20boarding/presentation/view/on_boarding_view.dart';

class LivresqueApp extends StatelessWidget {
  const LivresqueApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          OnBoardingView.routeName:(context)=>const OnBoardingView()
        },
        initialRoute: OnBoardingView.routeName,
        theme: ThemeApp.lightTheme,
      ),
    );
  }
}
