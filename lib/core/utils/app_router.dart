import 'package:go_router/go_router.dart';
import 'package:livresque_app/features/auth/login/presentation/view/login_view.dart';
import 'package:livresque_app/features/auth/sign_up/presentation/view/sign_up_view.dart';
import 'package:livresque_app/features/on%20boarding/display%20frames/presentation/view/display_frame_view.dart';
import 'package:livresque_app/features/on%20boarding/get%20started/presentation/view/get_started_view.dart';

abstract class AppRouter{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const DisplayFramesView(),
      ),
      GoRoute(
        path: GetStartedView.routeName,
        builder: (context, state) => const GetStartedView(),
      ),
      GoRoute(
        path: SignUpView.routeName,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: LoginView.routeName,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}