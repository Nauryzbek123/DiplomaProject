import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_application_1/src/core/widgets/row_spacer.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatelessWidget {
  final String text;

  const CardWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 119,
        child: Card(
          color: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    child: ManropeText(
                      'Tomato Plants',
                      14,
                      AppColors.regularBlacColor,
                      FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ManropeText(
                          'Healthy',
                          14,
                          AppColors.GreenColor,
                          FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.more_vert, size: 18, color: AppColors.navGray),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ManropeText(
                  'Zone A - 12 plants',
                  14,
                  AppColors.lightBlackColor,
                  FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Icon(
                      Icons.thermostat,
                      size: 16,
                      color: AppColors.greyLightColor,
                    ),
                  ),
                  ManropeText(
                    '24°C',
                    14,
                    AppColors.greyLightColor,
                    FontWeight.normal,
                  ),
                  RowSpacer(1),
                  Icon(
                    Icons.water_drop,
                    size: 16,
                    color: AppColors.greyLightColor,
                  ),
                  ManropeText(
                    '65%',
                    14,
                    AppColors.greyLightColor,
                    FontWeight.normal,
                  ),
                  RowSpacer(1),
                  Icon(
                    Icons.sunny,
                    size: 16,
                    color: AppColors.greyLightColor,
                  ),
                  ManropeText(
                    '850 lux',
                    14,
                    AppColors.greyLightColor,
                    FontWeight.normal,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
