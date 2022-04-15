import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';
import '../common_widgets/texts/custom_texts.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.quantity, required this.imagePath})
      : super(key: key);
  final int quantity;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: AppColors.containerBorderColor, width: 2),
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: -5.h,
          left: 10.w,
          child: CircleAvatar(
            radius: 10.r,
            backgroundColor: AppColors.primaryColor,
            child: SSTArabicMedium(
              text: quantity.toString(),
              fontSize: 13,
            ),
          ),
        ),
        Positioned(
          top: -5.h,
          left: -5.w,
          child: CircleAvatar(
            radius: 10.r,
            backgroundColor: AppColors.containerDeleteIconColor,
            child: Icon(
              Icons.delete,
              size: 15.sp,
              color: AppColors.iconColor,
            ),
          ),
        ),
      ],
    );
  }
}
