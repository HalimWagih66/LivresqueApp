import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:livresque_app/core/utils/widgets/app_bar/custom_app_bar.dart';
import 'package:livresque_app/features/on%20boarding/get%20started/presentation/view/get_started_view.dart';
import 'login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = "/LoginView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          onTap: () {
            GoRouter.of(context).replace(GetStartedView.routeName);
          },
        ),
        body: const LoginViewBody());
  }
}
