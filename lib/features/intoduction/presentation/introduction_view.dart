import 'package:amal_pay_app/features/intoduction/presentation/widgets/introduction_view_body.dart';
import 'package:flutter/material.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});
  static String path = '/IntroductionView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroductionViewBody(),
    );
  }
}
