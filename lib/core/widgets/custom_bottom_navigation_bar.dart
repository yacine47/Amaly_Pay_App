import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, this.onTap, required this.currentIndex});

  final void Function(int)? onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.dividerColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space items
        children: [
          _buildBottomNavigationItem(
            label: 'الرئيسية',
            iconPath: AppIconsSvg.homeLight,
            activeIconPath: AppIconsSvg.home,
            isActive: currentIndex == 0,
            index: 0,
            onTap: onTap,
          ),
          _buildBottomNavigationItem(
            label: 'الاعدادات',
            iconPath: AppIconsSvg.settingLight,
            activeIconPath: AppIconsSvg.setting,
            isActive: currentIndex == 1,
            index: 1,
            onTap: onTap,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationItem({
    required String iconPath,
    required String activeIconPath,
    required bool isActive,
    required String label,
    required int index,
    required void Function(int)? onTap,
  }) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap(index);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 40,
        ), // Adjust padding
        decoration: BoxDecoration(
          color: isActive ? AppColors.lightGreen : Colors.transparent,
          borderRadius: BorderRadius.circular(22), // Adjust border radius
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              isActive ? activeIconPath : iconPath,
              width: isActive ? 26 : 24,
              height: isActive ? 26 : 24,
            ),
            Text(
              label,
              style: isActive == false
                  ? Styles.style10.copyWith(
                      color: AppColors.unSelectBottomNav,
                      fontWeight: FontWeight.w500,
                    )
                  : Styles.style10.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
