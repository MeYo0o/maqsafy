import 'package:flutter/material.dart';
import 'package:maqsafy/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maqsafy/screens/common_widgets/texts/custom_texts.dart';
import 'package:maqsafy/screens/home_screen_widgets/cart_data.dart';
import 'package:maqsafy/screens/home_screen_widgets/logo_and_notifications.dart';
import 'package:maqsafy/screens/home_screen_widgets/profile_data.dart';
import 'package:maqsafy/screens/home_screen_widgets/search_and_buttons.dart';

import 'home_screen_widgets/categories.dart';
import 'home_screen_widgets/bottom_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.heavyGreen,
            AppColors.lightGreen,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            SizedBox(height: 15.h),
            const LogoAndNotifications(),
            const SearchAndButtons(),
            const BottomContainer(),
          ],
        ),
      ),
    );
  }
}
