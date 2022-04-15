import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoAndNotifications extends StatelessWidget {
  const LogoAndNotifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10.w),
        Icon(
          Icons.notifications_none_rounded,
          color: Colors.white,
          size: 30.sp,
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 40.0.w),
          child: Image.asset(
            'assets/images/logo.png',
            height: 70.h,
            width: 100.h,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
