import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  static const routeName = "GetStartedView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8599ff),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/on_boarding/image_get_started.png"),
            SizedBox(height: 37.h),
            Text("Read your favourite book from here.",
                style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 16),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SizedBox(height: 48.h),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black,padding: EdgeInsets.symmetric(vertical: 15.h)),
              child: Text(
                "Get Started",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 14.h,fontWeight: FontWeight.w700,letterSpacing: 0.9),
              ),
            ),
            const SizedBox(height: 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ",style:Theme.of(context).textTheme.displaySmall),
                Text("Login",style:Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w700))
              ],
            ),
            SizedBox(height: 57.h)
          ],
        ),
      ),
    );
  }
}
