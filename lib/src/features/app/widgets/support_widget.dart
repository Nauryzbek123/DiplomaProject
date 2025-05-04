import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_application_1/src/core/widgets/column_spacer.dart';
import 'package:flutter_application_1/src/core/widgets/drop_down_menu.dart';
import 'package:flutter_application_1/src/core/widgets/horizontal_line.dart';
import 'package:flutter_application_1/src/core/widgets/row_spacer.dart';
import 'package:flutter_application_1/src/core/widgets/switch_button.dart';
import 'package:flutter_application_1/src/features/app/widgets/green_button.dart';
import 'package:flutter_svg/svg.dart';

class SupportWidget extends StatelessWidget {
  const SupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 250,
        child: Card(
          color: AppColors.whiteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColumnSpacer(1),
              Padding(
                padding: const EdgeInsets.only(left: 23, top: 2),
                child: ManropeText(
                  'Support',
                  18,
                  AppColors.boldBlackColor,
                  FontWeight.w600,
                ),
              ),
              ColumnSpacer(2),
              HorizontalLine(),
              ColumnSpacer(2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ManropeText(
                      'Help Center',
                      18,
                      AppColors.boldBlackColor,
                      FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_forward_ios_outlined, color: AppColors.navGray,),
                  ),
                ],
              ),
              ColumnSpacer(1),
              HorizontalLine(),
              ColumnSpacer(2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ManropeText(
                      'Contact Support',
                      18,
                      AppColors.boldBlackColor,
                      FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_forward_ios_outlined, color: AppColors.navGray,),
                  ),
                ],
              ),
              ColumnSpacer(1),
              HorizontalLine(),
              ColumnSpacer(2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: ManropeText(
                      'FAQ',
                      18,
                      AppColors.boldBlackColor,
                      FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.arrow_forward_ios_outlined, color: AppColors.navGray,),
                  ),
                ],
              ),
              ColumnSpacer(2),
            ],
          ),
        ),
      ),
    );
  }
}
