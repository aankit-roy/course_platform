import 'package:course_platform/modal/bottom_nav_item_list.dart';
import 'package:course_platform/res/colors/app_colors.dart';
import 'package:course_platform/screens/batches_screen.dart';
import 'package:course_platform/screens/chat_screen.dart';
import 'package:course_platform/screens/home_screen.dart';
import 'package:course_platform/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  int _currentIndex = 0;

  // List of screens for each tab in the BottomNavigationBar
  final List<Widget> _screens = [
    const HomeScreen(),
    const BatchesScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  // Function to update the selected index when a tab is tapped
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],  // Display the current screen
      bottomNavigationBar: Container(
        height: 75.sp,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ]),
        child: bottomNavBar(),
      ),
    );
  }
  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: AppColors.primaryPurple,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold, // Makes selected label bold
        ),
      // unselectedItemColor: Colors.grey,
      onTap: _onTabTapped,

        type: BottomNavigationBarType.fixed,
        items: bottomNavItemList


    );
  }


}


