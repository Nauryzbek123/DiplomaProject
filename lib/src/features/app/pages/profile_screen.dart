import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_application_1/src/core/widgets/column_spacer.dart';
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
            Container(
              height: 200,
              width: width,
              color: AppColors.lightGreyColor,
              child: Stack( 
                children: [
                  OwnerImageWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
