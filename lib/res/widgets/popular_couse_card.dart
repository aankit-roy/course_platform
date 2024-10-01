import 'package:course_platform/modal/image_path.dart';
import 'package:course_platform/res/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularCourseCard extends StatelessWidget {
  const PopularCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305.sp,
      margin: const EdgeInsets.symmetric(horizontal: 6,vertical: 4),
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        color: AppColors.white, // Set background color
        borderRadius: BorderRadius.circular(16.sp), // Border radius

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Grey shadow with opacity
            blurRadius: 6.sp, // Blurred effect for the shadow
            offset: const Offset(0, 2), // Positioning the shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Mr. Sampath',
                  style: TextStyle(
                    color: const Color(0xFF4C4452),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w800
                  ),
                ),
              ),
              Image.asset(
                ImagePath.checkMarkImage,
                width: 22.sp,
                height: 15.sp,
              ),
            ],
          ),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(7.sp),
              image: const DecorationImage(
                image: AssetImage(ImagePath.courseImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Image.asset(ImagePath.courseImage,
                width: 267.sp, height: 146.sp, fit: BoxFit.fill),
          ),
          Center(
            child: Text(
              'Class 10th - Mathematics',
              style: TextStyle(
                color: const Color(0xFF4C4452),
                fontSize: 14.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Container(
              width: 271.sp,
              height: 34.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7)
              ),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),

                ),
                color: const Color(0xFF7774D5),
                onPressed: () {},
                child: Text('Join',
                    style: TextStyle(color: Colors.white, fontSize: 14.sp,fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
