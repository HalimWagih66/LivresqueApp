import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:livresque_app/core/utils/app_router.dart';
import 'core/utils/theme/theme.dart';
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
      builder: (context, child) => MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeApp.lightTheme,
      ),
    );
  }

}