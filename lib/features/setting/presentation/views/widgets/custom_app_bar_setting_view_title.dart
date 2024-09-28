import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarSettingViewTitle extends StatelessWidget {
  const CustomAppBarSettingViewTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            AppIconsSvg.goBack,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
        Text(
          'الاعدادت',
          style: Styles.style18.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        SvgPicture.asset(
          AppIconsSvg.goBack,
          colorFilter: const ColorFilter.mode(
            Colors.transparent,
            BlendMode.srcIn,
          ),
        ),
        // const SizedBox(width: kPaddingHorizontal)
      ],
    );
  }
}
