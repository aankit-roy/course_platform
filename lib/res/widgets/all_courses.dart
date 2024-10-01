
import 'package:course_platform/modal/image_path.dart';
import 'package:course_platform/res/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6,vertical: 4),

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
      width: 305.sp,
      padding: const EdgeInsets.all(8.0),
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
              'ARAMBH - NEET DROPPER BATCH',
              style: TextStyle(
                color: const Color(0xFF4C4452),
                fontSize: 14.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Row(children: [
                  Image.asset(ImagePath.fullSyllabusIcon, width: 14.sp,height: 15.sp,),
                   SizedBox(width: 5.sp),
                   Text('Full Syllabus',
                      style: TextStyle(fontSize: 10.sp,color: const Color(0xFF6F6675))),
                ]),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Image.asset(ImagePath.scholarIcon, width: 10.sp,height: 14.sp,),
                     SizedBox(width: 5.sp),
                    Text('For NEET 2025 & 2026 Aspirants',
                        style: TextStyle(fontSize: 10.sp,color: const Color(0xFF6F6675))),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Row(children: [
                  Image.asset(ImagePath.liveIcon, width: 10.sp,height: 8.sp,),
                   SizedBox(width: 5.sp),
                  Text('Live + Recorded',
                      style: TextStyle(fontSize: 10.sp,color: const Color(0xFF6F6675))),
                ]),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Image.asset(ImagePath.calenderIcon,   width: 10.sp,height: 8.sp),
                      SizedBox(width: 5.sp),
                     Text('Batch starts on 16th Aug',
                        style: TextStyle(fontSize: 10.sp,color: const Color(0xFF6F6675))),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
           Row(
            children: [
              Text('₹ 5000', style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w900)),
              SizedBox(width: 8),
              Text('10000',
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.lineThrough)),
              SizedBox(width: 8.sp),
              Text('50% OFF',
                  style: TextStyle(fontSize: 12.sp, color: Colors.red,fontWeight: FontWeight.w400)),
            ],
          ),

           SizedBox(height: 3.sp,),
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
