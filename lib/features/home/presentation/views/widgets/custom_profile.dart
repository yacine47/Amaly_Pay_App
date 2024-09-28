import 'package:amal_pay_app/core/utils/app_assets.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(555),
            child: Image.asset(
              AppAssets.photoProfile,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'صباح الخير ',
                style: Styles.style14.copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'خالد محمد احمد',
                style: Styles.style14.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        SvgPicture.asset(
          AppIconsSvg.notification,
          width: 24,
          height: 24,
        ),
      ],
    );
  }
}
