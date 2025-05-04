import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_application_1/src/core/widgets/column_spacer.dart';
import 'package:flutter_application_1/src/features/app/widgets/card_widget.dart';
import 'package:flutter_application_1/src/features/app/widgets/green_button.dart';
import 'package:flutter_application_1/src/features/app/widgets/owner_image_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ColumnSpacer(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
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
            ColumnSpacer(1),
            Container(
              height: 154,
              width: width,
              color: AppColors.lightGreyColor,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [Padding(
                  padding: const EdgeInsets.only(bottom: 0.1),
                  child: OwnerImageWidget(),
                )],
              ),
            ),
            ColumnSpacer(2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GreenButton(
                  'Add Plant',
                  'addPlant',
                  AppColors.lightGreyColor,
                  AppColors.whiteColor,
                  163.5
                ),
                GreenButton(
                  'Filter',
                  'filter',
                  AppColors.whiteColor,
                  AppColors.lightGreyColor,
                  163.5
                ),
              ],
            ),
            ColumnSpacer(2),
            CardWidget('ssss'),
            ColumnSpacer(1),
            CardWidget('ssss'),
            ColumnSpacer(1),
            CardWidget('ssss'),
          ],
        ),
      ),
    );
  }
}
