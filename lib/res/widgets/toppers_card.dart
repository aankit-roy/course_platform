import 'package:course_platform/modal/image_path.dart';
import 'package:course_platform/res/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToppersCard extends StatelessWidget {
  const ToppersCard({
    super.key,
    required this.title,
    this.backgroundColor = AppColors.white,
  });
  final String title;
  final Color backgroundColor; // Background color with default value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: backgroundColor, // Set background color
          borderRadius: BorderRadius.circular(12), // Border radius
          border: Border.all(
            color: AppColors.topperCardBorderColor, // Border color
            width: 1, // Border width
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: AppColors.darkText),
            ),
            const SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTopperItem(ImagePath.topper1, 'Shree', '720/720'),
                const SizedBox(width: 8),
                _buildTopperItem(ImagePath.topper2, 'Shree', '720/720'),
                const SizedBox(width: 8),
                _buildTopperItem(ImagePath.topper3, 'Shree', '720/720'),
                const SizedBox(width: 8),
                _buildTopperItem(ImagePath.topper4, 'Shree', '720/720'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Helper method to create individual topper item
Widget _buildTopperItem(String imagePath, String name, String score) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6.0),
        child: Image.asset(
          imagePath,
          width: 60.sp,
          height: 60.sp,
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.darkText,
              fontSize: 12.sp),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          score,
          style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp),
        ),
      ),
    ],
  );
}
