import 'package:amal_pay_app/features/auth/presentation/views/login_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:amal_pay_app/features/intoduction/presentation/introduction_view.dart';
import 'package:amal_pay_app/features/intoduction/presentation/welcome_view.dart';
import 'package:amal_pay_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: SplashView.path,
    routes: [
      GoRoute(
        path: SplashView.path,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: IntroductionView.path,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation.drive(CurveTween(curve: Curves.easeInOutCirc)),
              child: child,
            );
          },
          child: const IntroductionView(),
        ),
      ),
      GoRoute(
        path: WelcomeView.path,
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: LoginView.path,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: SignUpView.path,
        builder: (context, state) => const SignUpView(),
      ),
    ],
  );
}
