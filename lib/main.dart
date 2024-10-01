import 'package:course_platform/res/colors/app_colors.dart';
import 'package:course_platform/screens/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child:   MaterialApp(
          title: 'Course Platform',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.backgroundColor,


            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryPurple),

            useMaterial3: true,
          ),
          home: const RootScreen()
      ),
    );
  }
}
