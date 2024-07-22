import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livresque_app/core/utils/theme.dart';
import 'package:livresque_app/features/on%20boarding/get%20started/presentation/view/get_started_view.dart';

import 'features/on boarding/display frames/presentation/view/display_frame_view.dart';

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
          DisplayFramesView.routeName:(context)=>const DisplayFramesView(),
          GetStartedView.routeName:(context)=> const GetStartedView()
        },
        initialRoute: DisplayFramesView.routeName,
        theme: ThemeApp.lightTheme,
      ),
    );
  }

}
