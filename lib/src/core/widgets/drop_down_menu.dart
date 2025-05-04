import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/resources/app_colors.dart';
import 'package:flutter_application_1/src/core/resources/manrope_text.dart';
import 'package:flutter_svg/svg.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? selectedOption;
  final List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 311.0,
        height: 38.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Color(0xFFF9FAFB),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Color(0xFFE5E7EB)),
        ),
        child: DropdownButton<String>(
          value: selectedOption,
          hint: Text(
            'Select Option',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          isExpanded: true,
          underline: SizedBox(),
          onChanged: (String? newValue) {
            setState(() {
              selectedOption = newValue;
            });
          },
          items:
              options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: ManropeText(
                    value,
                    14,
                    AppColors.boldBlackColor,
                    FontWeight.w400,
                  ),
                );
              }).toList(),
          dropdownColor: Colors.white,
          icon: SvgPicture.asset('assets/svg/arrow_down.svg'),
        ),
      ),
    );
  }
}
