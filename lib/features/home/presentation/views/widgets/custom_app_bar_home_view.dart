import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/features/home/presentation/views/widgets/custom_profile.dart';
import 'package:amal_pay_app/features/home/presentation/views/widgets/send_new_amount.dart';
import 'package:flutter/material.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
      child: const Column(
        children: [
          SizedBox(height: 18),
          CustomProfile(),
          SizedBox(height: 13),
          SendNewAmount(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
