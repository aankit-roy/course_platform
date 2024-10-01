import 'package:course_platform/res/colors/app_colors.dart';
import 'package:course_platform/res/components/content_holder.dart';
import 'package:course_platform/res/components/title_text.dart';
import 'package:course_platform/res/widgets/all_courses.dart';
import 'package:course_platform/res/widgets/notification_icon.dart';
import 'package:course_platform/res/widgets/popular_couse_card.dart';
import 'package:course_platform/res/widgets/switch_option.dart';
import 'package:course_platform/res/widgets/toppers_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../modal/image_path.dart';
import '../res/widgets/custom_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Online / Offline Switch
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Center(child: SwitchOption()),
                  ),

                  // Free and Paid Sections
                  bannerList(),


                  courseList(),
                  SizedBox(height: 10.sp,),
                  toppersHeading(),
                  toppersWidget(),
                  SizedBox(height: 10.sp,),
                  popularCourseHeading(),
                  popularCourseWidget(),
                  SizedBox(height: 10.sp,),
                  allCoursesHeading(),
                  allCoursesWidget(),



                ],
              ),
            ),
            referAndEarnWidget(),
            SizedBox(height:30.sp)
          ],
        )
      ),
    );
  }

  Padding toppersHeading() {
    return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: TitleText(text: "Toppers of ABC",),
                );
  }

  Container referAndEarnWidget() {
    return Container(
            margin:  EdgeInsets.symmetric(vertical: 30.sp),
            padding: const EdgeInsets.all(16),
            height: 161.sp,
            width: double.infinity,
            color: const Color(0xFFFFEDED),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  bottom: -5.sp,
                  child: Image.asset(
                    ImagePath.cashbackRewardImage,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text('Refer & Earn',
                        style: TextStyle(
                            color: Color(0xFF4C4C4C), fontSize: 14.sp,fontWeight: FontWeight.w500)),
                      Text('Cashback & Rewards',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF0C0C0C),
                          fontSize: 18.sp,
                        )),
                     Text(
                        'Invite Your Friends & Get Up \nto ₹500 After Registration',
                        style: TextStyle(
                          color: Color(0xFF454545),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400
                        )),
                    MaterialButton(
                      color: const Color(0xFF272A34),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(6.sp),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical:6.sp ,horizontal: 24.sp),
                        child:  Text(
                          'Invite',
                          style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w800),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
  }

  Padding popularCourseHeading() {
    return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleText(text: "Popular Courses",),
                  Text(
                    "View All",
                    style:
                    TextStyle(color: AppColors.warningRed, fontSize: 16.sp,fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            );
  }

  SizedBox popularCourseWidget() {
    return SizedBox(
              height: 265.sp,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  PopularCourseCard(),
                  PopularCourseCard(),
                ],
              ),
            );
  }

  Padding allCoursesHeading() {
    return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleText(text: "All Courses",),
                  Text(
                    "View All",
                    style:
                    TextStyle(color: AppColors.warningRed, fontSize: 16.sp,fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            );
  }

  SizedBox allCoursesWidget() {
    return SizedBox(
              height: 345.sp,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  AllCourses(),
                  AllCourses(),

                ],
              ),
            );
  }

  SizedBox toppersWidget() {
    return SizedBox(
              height: 180.sp,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ToppersCard(
                    title: 'NEET Toppers of Rajbir Institute',
                  ),
                  ToppersCard(
                    title: '10th Class Toppers of Rajbir Institute',
                    backgroundColor: AppColors.topperCard2Color,
                  ),
                ],
              ),
            );
  }

  Padding courseList() {
    return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                height: 110.sp,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ContentHolder(
                      width: 90,
                        title: 'Free Courses',
                        imagePath: ImagePath.freeCoursesIcon),
                    ContentHolder(
                        width: 90,
                        title: 'Attendance',
                        imagePath: ImagePath.attendanceIcon),
                    ContentHolder(
                        width: 90,
                        title: 'Store', imagePath: ImagePath.storeIcon),
                    ContentHolder(
                        width: 90,
                        title: 'Assessment',
                        imagePath: ImagePath.assessmentIcon),
                  ],
                ),
              ),
            );
  }

  Padding bannerList() {
    return Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.sp),
              child: SizedBox(
                height: 120.sp,
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  scrollDirection: Axis.horizontal,
                  children: [
                    const CustomBanner(
                      title: 'Live Sections on JEE Exams',
                      subtitle: 'Live Sections on JEE Exams',
                      imagePath: ImagePath.customBannerImage1,
                      backgroundColor: AppColors.bannerCard1,
                    ),
                    SizedBox(width: 10.sp),
                    const CustomBanner(
                      title: 'Free Courses',
                      subtitle: 'Live Sections on JEE Exams',
                      imagePath: ImagePath.customBannerImage2,
                      backgroundColor: AppColors.bannerCard2,
                    ),
                  ],
                ),
              ),
            );
  }

  AppBar customAppBar() {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      toolbarHeight: 80.sp, // Increase the height of the AppBar
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.sp, // Increase the size of the avatar
              backgroundImage: const AssetImage(ImagePath.userAvatar), // Assuming you have the correct path
            ),
            SizedBox(width: 10.sp),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hi, ',
                        style: TextStyle(
                          color: Colors.black, // Different color for "Hi"
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                        ),
                      ),
                      TextSpan(
                        text: 'Krishna',
                        style: TextStyle(
                          color: AppColors.primaryPurple, // Purple color for "Krishna"
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                 Text(
                  'Better yourself each day everyday',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          icon: Padding(
            padding:  EdgeInsets.all(12.0.sp),
            child: const NotificationIcon(notificationCount: 2),
          ),
          onPressed: () {},
        ),
      ],
    );
  }





}
