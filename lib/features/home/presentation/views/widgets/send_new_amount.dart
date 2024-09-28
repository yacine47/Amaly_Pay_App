import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/features/home/presentation/views/widgets/send_new_amount_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendNewAmount extends StatelessWidget {
  const SendNewAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(11),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12.5),
          child: SvgPicture.asset(
            AppIconsSvg.download,
            width: 35,
            height: 35,
          ),
        ),
        const SizedBox(width: 14),
        const SendNewAmountRichText(
          mainText: 'لإرسال مبلغ جديد ',
          spanText: 'اضغط هنا',
        ),
      ],
    );
  }
}
