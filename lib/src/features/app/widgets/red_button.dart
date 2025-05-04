import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_svg/svg.dart';

class RedButton extends StatelessWidget {
  const RedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 53,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.Red,
      ),
      child: Center(
        child: ManropeText(
          'Log Out',
          14,
          AppColors.whiteColor,
          FontWeight.w500,
        ),
      ),
    );
  }
}
