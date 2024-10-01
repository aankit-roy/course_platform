import 'package:course_platform/res/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentHolder extends StatelessWidget {
  const ContentHolder({
    super.key,
    required this.title,
    required this.imagePath,
    this.width, // Optional, flexible by default
    this.height, // Optional, flexible by default
    this.backgroundColor = AppColors.white, // Default background color: white
    this.borderRadius = 12.0, // Default border radius: 12
    this.borderColor =
        AppColors.cardBorderColor, // Default border color: yellow
    this.borderWidth = 1, // Default border width: 2
    this.shadowColor = Colors.grey, // Default shadow color: grey

    // Default shadow offset
  });

  final String title;
  final String imagePath;
  final double? width; // Optional width, flexible by default
  final double? height; // Optional height, flexible by default
  final Color backgroundColor; // Background color with default value
  final double borderRadius; // Border radius with default value of 12
  final Color borderColor; // Border color with default value of yellow
  final double borderWidth; // Border width with default value of 2
  final Color shadowColor; // Shadow color with default value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: width, // Dynamic or flexible width
        height: height, // Dynamic or flexible height
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: backgroundColor, // Set background color
          borderRadius: BorderRadius.circular(borderRadius), // Border radius
          border: Border.all(
            color: borderColor, // Border color
            width: borderWidth, // Border width
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(imagePath),
            Text(
              title,
              style: TextStyle(fontSize: 12.sp, color: AppColors.darkGray),
              textAlign: TextAlign.center, // Ensure text is centered
            ),
          ],
        ),
      ),
    );
  }
}
