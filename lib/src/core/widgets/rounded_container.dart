import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';

class RoundedContainer extends StatelessWidget {
  final String greyText;
  final String boldText;
  final IconData icon;

  const RoundedContainer(this.greyText, this.boldText, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.5,
      height: 93,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(
              0.05,
            ), 
            offset: Offset(0, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ManropeText(
                  greyText,
                  14,
                  AppColors.greyLightColor,
                  FontWeight.normal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(icon, size: 14, color: AppColors.GreenColor),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ManropeText(boldText, 24, AppColors.blackColor, FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
