import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';

class LanguageBox extends StatelessWidget {
  final String text;
  const LanguageBox(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: 51,
        height: 39,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withOpacity(0.05),
              offset: Offset(0, 1),
              blurRadius: 2,
            ),
          ],
          border: Border.all(width: 1, color: AppColors.borderColorLang),
        ),
        child: Center(
          child: ManropeText(
            text,
            14,
            AppColors.blackColor,
            FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
