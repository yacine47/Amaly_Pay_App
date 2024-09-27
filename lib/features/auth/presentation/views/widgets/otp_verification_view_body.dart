import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/core/widgets/custom_buttom.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_app_bar_otp.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_rich_text.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/reset_send_message_widget.dart';
import 'package:flutter/material.dart';

class OtpVerificationViewBody extends StatelessWidget {
  const OtpVerificationViewBody({super.key});
  static String path = 'OtpVerificationViewBody';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
      child: Column(
        children: [
          const SizedBox(height: 12),
          const CustomAppBarOtp(),
          Text(
            'التحقق من رقم الهاتف',
            style: Styles.style20,
          ),
          const SizedBox(height: 6),
          const CustomRichText(
            mainText: 'الرجاء إدخال الرمز المكون من 4 أرقام المرسل إليه',
            spanText: '76005478734+',
            continurMainText: 'عبر الرسائل القصيرة',
          ),
          Text(
            'ستنتهي صلاحية رمز التحقق في الساعة 00:59',
            style: Styles.style12.copyWith(
              color: AppColors.grey2,
            ),
          ),
          const ResetSendMessageWidget(
            mainText: 'لم تتلق رمزا؟',
            spanText: 'اعادة الرسال الرسالة',
          ),
          const CustomButton(
            title: 'التحقق من الرقم',
          ),
        ],
      ),
    );
  }
}
