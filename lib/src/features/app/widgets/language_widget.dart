import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_application_1/src/core/widgets/column_spacer.dart';
import 'package:flutter_application_1/src/core/widgets/horizontal_line.dart';
import 'package:flutter_application_1/src/core/widgets/language_box.dart';
import 'package:flutter_application_1/src/core/widgets/row_spacer.dart';
import 'package:flutter_application_1/src/features/app/widgets/green_button.dart';
import 'package:flutter_svg/svg.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 132,
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
                  'Language',
                  18,
                  AppColors.boldBlackColor,
                  FontWeight.w600,
                ),
              ),
              HorizontalLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RowSpacer(1),
                  LanguageBox('EN'),
                  LanguageBox('RU'),
                  LanguageBox('KZ'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
