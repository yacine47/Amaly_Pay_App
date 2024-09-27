import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String path = '/SignUpView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColorIntroApp,
      body: SignUpViewBody(),
    );
  }
}
