import 'package:course_platform/res/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularIcon extends StatelessWidget {
  final Widget icon;

  const CircularIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.secondaryPurple.withOpacity(0.2),
      ),
      padding: const EdgeInsets.all(12.0),
      child: icon,
    );
  }
}

Widget buildMessageIcon(String iconPath, int newMessages,
    {bool isActive = false}) {
  return Stack(
    children: [
      SvgPicture.asset(
        iconPath,
        colorFilter: isActive
            ? const ColorFilter.mode(AppColors.primaryPurple, BlendMode.srcIn)
            : null,
      ),
      if (newMessages > 0)
        Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: AppColors.primaryPurple,
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: BoxConstraints(
              minWidth: 12,
              minHeight: 12,
            ),
            child: Text(
              '$newMessages',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 8.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
    ],
  );
}
