import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatelessWidget {
  final String text;

  const CardWidget(
    this.text,
  {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ManropeText(
                  text,
                  14,
                  AppColors.regularBlacColor,
                  FontWeight.w600,
                ),
                ManropeText(text, 14, AppColors.GreenColor, FontWeight.w400),
                Icon(Icons.more_vert, size: 10, color: AppColors.navGray),
              ],
            ),
            ManropeText(text, 14, AppColors.lightBlackColor, FontWeight.w400),
            Row(
              children: [
                Icon(
                  Icons.thermostat,
                  size: 7,
                  color: AppColors.greyLightColor,
                ),
                ManropeText(
                  text,
                  14,
                  AppColors.greyLightColor,
                  FontWeight.normal,
                ),
                Icon(
                  Icons.thermostat,
                  size: 7,
                  color: AppColors.greyLightColor,
                ),
                ManropeText(
                  text,
                  14,
                  AppColors.greyLightColor,
                  FontWeight.normal,
                ),
                Icon(
                  Icons.thermostat,
                  size: 7,
                  color: AppColors.greyLightColor,
                ),
                ManropeText(
                  text,
                  14,
                  AppColors.greyLightColor,
                  FontWeight.normal,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
