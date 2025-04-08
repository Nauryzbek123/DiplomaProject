import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_svg/svg.dart';

class GreenButton extends StatelessWidget {
  final String text;
  final String svg;
  final Color color;
  final Color textColor;

  const GreenButton(this.text, this.svg,this.color, this.textColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.5,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.lightGreyColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.05),
            offset: Offset(0, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svg/$svg.svg'),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ManropeText(
              text,
              14,
              AppColors.whiteColor,
              FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
