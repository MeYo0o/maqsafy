import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maqsafy/core/constants/colors.dart';

import '../texts/custom_texts.dart';

class CustomButtonWithImage extends StatelessWidget {
  const CustomButtonWithImage({
    Key? key,
    required this.text,
    required this.imagePath,
    this.edgeInsetsGeometry,
  }) : super(key: key);

  final String text;
  final String imagePath;
  final EdgeInsetsGeometry? edgeInsetsGeometry;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SSTArabicMedium(
            text: text,
            fontSize: 15,
            fontColor: AppColors.primaryColor,
          ),
          SizedBox(width: 10.w),
          Image.asset(
            imagePath,
            height: 45.h,
          ),
        ],
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        padding: edgeInsetsGeometry ?? EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
    );
  }
}
