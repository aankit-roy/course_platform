import 'package:course_platform/res/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.text, // Required text input

    this.fontWeight = FontWeight.w800, // Default font weight
    this.color = AppColors.darkText, // Default color is black
  });

  final String text; // The text to display

  final FontWeight fontWeight; // The weight (boldness) of the text
  final Color color; // The color of the text

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18.sp ,// Set font size
        fontWeight: fontWeight, // Set font weight
        color: color, // Set text color
      ),
    );
  }
}