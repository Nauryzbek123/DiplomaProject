import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_application_1/src/core/widgets/horizontal_line.dart';
import 'package:flutter_application_1/src/core/widgets/row_spacer.dart';
import 'package:flutter_application_1/src/features/app/widgets/green_button.dart';
import 'package:flutter_svg/svg.dart';

class SensoreSetup extends StatelessWidget {
  const SensoreSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 201,
        child: Card(
          color: AppColors.whiteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23, top: 2),
                child: ManropeText(
                  'Sensor Setup',
                  18,
                  AppColors.boldBlackColor,
                  FontWeight.w600,
                ),
              ),
              HorizontalLine(),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: GreenButton(
                  'Add New Sensor',
                  'plus',
                  AppColors.lightGreyColor,
                  AppColors.whiteColor,
                  311
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 6),
                child: GreenButton(
                  'Configure Sensors',
                  'set',
                  AppColors.whiteColor,
                  AppColors.lightGreyColor,
                  311
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
