import 'package:flutter/material.dart';
import 'package:livresque_app/features/on%20boarding/display%20frames/presentation/view/widget/display_frame_view_body.dart';

class DisplayFramesView extends StatelessWidget {
  const DisplayFramesView({super.key});
  static const routeName = "/";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DisplayFramesViewBody(),
    );
  }
}
