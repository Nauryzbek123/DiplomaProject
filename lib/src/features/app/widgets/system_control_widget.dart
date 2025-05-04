import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_application_1/src/core/widgets/column_spacer.dart';
import 'package:flutter_application_1/src/core/widgets/drop_down_menu.dart';
import 'package:flutter_application_1/src/core/widgets/horizontal_line.dart';
import 'package:flutter_application_1/src/core/widgets/row_spacer.dart';
import 'package:flutter_application_1/src/features/app/widgets/green_button.dart';
import 'package:flutter_svg/svg.dart';

class SystemControlWidget extends StatelessWidget {
  const SystemControlWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 276,
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
                  'System Controls',
                  18,
                  AppColors.boldBlackColor,
                  FontWeight.w600,
                ),
              ),
              ColumnSpacer(2),
              HorizontalLine(),
              ColumnSpacer(1),
              Padding(
                padding: const EdgeInsets.only(left: 23, top: 2),
                child: ManropeText(
                  'Camera Quality',
                  14,
                  AppColors.boldBlackColor,
                  FontWeight.normal,
                ),
              ),
              ColumnSpacer(1),
              CustomDropdown(),
              ColumnSpacer(2),
              HorizontalLine(),
              ColumnSpacer(2),
              Padding(
                padding: const EdgeInsets.only(left: 23, top: 2),
                child: ManropeText(
                  'Sensor Refresh Rate',
                  14,
                  AppColors.boldBlackColor,
                  FontWeight.normal,
                ),
              ),
              ColumnSpacer(1),
              CustomDropdown(),
            ],
          ),
        ),
      ),
    );
  }
}
