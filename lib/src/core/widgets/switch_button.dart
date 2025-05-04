import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    const WidgetStateProperty<Color?> trackColor = WidgetStateProperty<Color?>.fromMap(
      <WidgetStatesConstraint, Color>{WidgetState.selected: AppColors.GreenColor},
    );
    final WidgetStateProperty<Color?> overlayColor = WidgetStateProperty<Color?>.fromMap(
      <WidgetState, Color>{
        WidgetState.selected: AppColors.GreenColor,
        WidgetState.disabled: AppColors.NavItemGrey,
      },
    );

    return Switch(
      value: light,
      overlayColor: overlayColor,
      trackColor: trackColor,
      thumbColor: const WidgetStatePropertyAll<Color>(AppColors.whiteColor),
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}