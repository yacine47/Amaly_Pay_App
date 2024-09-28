import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TitleItems extends StatelessWidget {
  const TitleItems({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.style18,
    );
  }
}
