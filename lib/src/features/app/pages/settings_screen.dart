import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_application_1/src/core/widgets/column_spacer.dart';
import 'package:flutter_application_1/src/core/widgets/drop_down_menu.dart';
import 'package:flutter_application_1/src/core/widgets/horizontal_line.dart';
import 'package:flutter_application_1/src/features/app/widgets/automation_widget.dart';
import 'package:flutter_application_1/src/features/app/widgets/green_button.dart';
import 'package:flutter_application_1/src/features/app/widgets/language_widget.dart';
import 'package:flutter_application_1/src/features/app/widgets/red_button.dart';
import 'package:flutter_application_1/src/features/app/widgets/sensore_setup.dart';
import 'package:flutter_application_1/src/features/app/widgets/support_widget.dart';
import 'package:flutter_application_1/src/features/app/widgets/system_control_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ColumnSpacer(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ManropeText(
                    'logo',
                    20,
                    AppColors.boldBlackColor,
                    FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.notifications_none,
                      color: AppColors.boldBlackColor,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SensoreSetup(),
            ColumnSpacer(1),
            LanguageWidget(),
            ColumnSpacer(1),
            SystemControlWidget(),
            ColumnSpacer(1), 
            AutomationWidget(), 
            ColumnSpacer(1), 
            SupportWidget(), 
            ColumnSpacer(1),
            RedButton()
          ],
        ),
      ),
    );
  }
}
