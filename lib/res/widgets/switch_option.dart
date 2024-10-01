import 'package:course_platform/res/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class SwitchOption extends StatefulWidget {
  const SwitchOption({super.key});

  @override
  State<SwitchOption> createState() => _SwitchOptionState();
}

class _SwitchOptionState extends State<SwitchOption> {
  var _tabTextIndexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return FlutterToggleTab(
      width: 80.sp,
      borderRadius: 28.sp,
      height: 40.sp,
      selectedIndex: _tabTextIndexSelected,
      selectedBackgroundColors: const [AppColors.onlineTab],
      unSelectedBackgroundColors: const [AppColors.offlineTab],
      selectedTextStyle: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
      unSelectedTextStyle: const TextStyle(
          color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
      labels: const ['Online', 'Offline'],
      selectedLabelIndex: (index) {
        setState(() {
          _tabTextIndexSelected = index;
        });
      },
      isScroll: false,
    );
  }
}
