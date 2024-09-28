import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_assets.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/features/setting/presentation/views/widgets/custom_app_bar_setting_view_title.dart';
import 'package:amal_pay_app/features/setting/presentation/views/widgets/custom_edit_profile.dart';
import 'package:flutter/material.dart';

class CustomAppBarSettingView extends StatelessWidget {
  const CustomAppBarSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: const EdgeInsets.only(right: kPaddingHorizontal),
      child: Stack(
        children: [
          const Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 12),
                CustomAppBarSettingViewTitle(),
                Spacer(),
                CustomEditProfile(),
                SizedBox(height: 19),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                AppAssets.rectangleProfile,
                height: MediaQuery.of(context).size.height * .16,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
