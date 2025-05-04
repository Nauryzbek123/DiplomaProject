import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_svg/svg.dart';

class GreenButton extends StatelessWidget {
  final String text;
  final String svg;
  final Color color;
  final Color textColor;
  final double width;

  const GreenButton(
    this.text,
    this.svg,
    this.color,
    this.textColor,
    this.width, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
        boxShadow: [BoxShadow(color: AppColors.lightGreyColor)],
        border: Border.all(width: 1, color: AppColors.lightGreyColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svg/$svg.svg'),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ManropeText(text, 14, textColor, FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
