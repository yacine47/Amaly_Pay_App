import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
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
      child: Column(
        children: [
          const SizedBox(height: 18),
          CustomProfile(
            icon: AppIconsSvg.notification,
          ),
          const SizedBox(height: 13),
          const SendNewAmount(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
