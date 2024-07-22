import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeApp{
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: const Color(0xff000000),
        fontFamily: "Montserrat",
      ),
      bodyMedium: TextStyle(
        fontFamily: "Roboto",
        color: Colors.grey,
        fontSize: 15.sp,
      ),
      displayLarge: TextStyle(
        fontFamily: "PlusJakartaSans",
        color: const Color(0xffffffff),
        fontSize: 36.sp,
        fontWeight: FontWeight.w800
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: 13.sp
      ),

    ),
  );
}