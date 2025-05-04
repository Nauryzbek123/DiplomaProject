import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_application_1/src/core/widgets/row_spacer.dart';

class OwnerImageWidget extends StatelessWidget {
  const OwnerImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 112,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.05),
            offset: Offset(0, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RowSpacer(2),
          CircleAvatar(radius: 30, backgroundColor: Colors.brown.shade800),
          RowSpacer(2),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ManropeText(
                'Nurlan Suleimenov',
                20,
                AppColors.boldBlackColor,
                FontWeight.w600,
              ),
              ManropeText(
                'Greenhouse Owner',
                14,
                AppColors.regularBlacColor,
                FontWeight.normal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
