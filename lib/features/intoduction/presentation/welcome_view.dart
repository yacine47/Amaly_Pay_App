import 'package:amal_pay_app/features/intoduction/presentation/widgets/welcome_view_body.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  static String path = '/WelcomeView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeViewBody(),
    );
  }
}
