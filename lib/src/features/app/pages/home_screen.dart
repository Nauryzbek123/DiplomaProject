import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_application_1/src/core/widgets/column_spacer.dart';
import 'package:flutter_application_1/src/core/widgets/rounded_container.dart';
import 'package:flutter_application_1/src/features/app/widgets/green_button.dart';
import 'package:flutter_application_1/src/features/app/widgets/trends_chart_widget.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            ColumnSpacer(3),
            SizedBox(
              width: width,
              height: 280,
              child: FittedBox(
                fit: BoxFit.fill,
                child: SvgPicture.asset(
                  'assets/svg/homePage.svg',
                  width: width,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ColumnSpacer(2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RoundedContainer('Temperature', '24°C', Icons.thermostat),
                RoundedContainer('Temperature', '24°C', Icons.thermostat),
              ],
            ),
            ColumnSpacer(2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RoundedContainer('Temperature', '24°C', Icons.thermostat),
                RoundedContainer('Temperature', '24°C', Icons.thermostat),
              ],
            ),
            ColumnSpacer(2),
            TrendsChartWidget(),
            ColumnSpacer(1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GreenButton('Toggle System', 'toggle'),
                GreenButton('Water Now', 'water'),
              ],
            ),
            ColumnSpacer(3)
          ],
        ),
      ),
    );
  }
}
