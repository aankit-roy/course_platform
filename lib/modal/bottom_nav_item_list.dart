import 'package:course_platform/modal/image_path.dart';
import 'package:course_platform/res/colors/app_colors.dart';
import 'package:course_platform/res/widgets/circular_bottam_nav_Icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<BottomNavigationBarItem> get bottomNavItemList {
  return [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        ImagePath.homeSvgIcon,
        colorFilter:
            const ColorFilter.mode(AppColors.darkGray, BlendMode.srcIn),
      ),
      activeIcon: CircularIcon(
        icon: SvgPicture.asset(
          ImagePath.homeSvgIcon,
          colorFilter:
              const ColorFilter.mode(AppColors.primaryPurple, BlendMode.srcIn),
        ),
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(ImagePath.batchesSvgIcon),
      activeIcon: CircularIcon(
        icon: SvgPicture.asset(
          ImagePath.batchesSvgIcon,
          colorFilter:
              const ColorFilter.mode(AppColors.primaryPurple, BlendMode.srcIn),
        ),
      ),
      label: "Batches",
    ),
    BottomNavigationBarItem(
      icon: buildMessageIcon(ImagePath.messageSvgIcon, 5),
      activeIcon: CircularIcon(
        icon: buildMessageIcon(ImagePath.messageSvgIcon, 5, isActive: true),
      ),
      label: "Chat",
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(ImagePath.profileSvgIcon),
      activeIcon: CircularIcon(
        icon: SvgPicture.asset(
          ImagePath.profileSvgIcon,
          colorFilter:
              const ColorFilter.mode(AppColors.primaryPurple, BlendMode.srcIn),
        ),
      ),
      label: "Profile",
    ),
  ];
}
