import 'package:amal_pay_app/features/auth/presentation/views/widgets/content_sign_up_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_background_image_auth.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomBackgourndImageAuth(),
        ContentSignUpView(),
      ],
    );
  }
}
