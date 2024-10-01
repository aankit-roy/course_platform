import 'package:course_platform/res/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.backgroundColor,
  });

  final String title;
  final String subtitle;
  final String imagePath;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 206.sp,
      padding: const EdgeInsets.only(top: 12, left: 12, bottom: 10,right: 2),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -5,
            bottom: 0,
            child: SizedBox(
              height: 77.sp,
              width: 103.sp,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.darkText,
                ),
                maxLines: 2,
              ),
              SizedBox(height: 6.sp),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.black.withOpacity(.4),
                    fontWeight: FontWeight.w400),
                maxLines: 2,
              ),
              SizedBox(height: 8.sp),
              MaterialButton(
                color: const Color(0xFF272A34),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.sp),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 2.sp, horizontal: 20.sp),
                  child: Text(
                    'Join',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              )
              // SizedBox(
              //   width: 90.sp, // Set your desired width here
              //   height: 30.sp,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       // Button action
              //     },
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: AppColors.onlineTab,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(6),
              //       ),
              //     ),
              //     child: const Text(
              //       'Join',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ),
              // )
            ],
          ),
        ],
      ),
    );
  }
}
