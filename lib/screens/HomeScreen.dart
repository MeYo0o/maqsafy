import 'package:flutter/material.dart';
import 'package:maqsafy/core/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200.h,
            width: double.infinity,
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
