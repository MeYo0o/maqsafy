import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maqsafy/screens/common_widgets/buttons/custom_button_with_image.dart';
import 'package:maqsafy/screens/common_widgets/buttons/custom_button_with_text.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 10.h, right: 10.w, left: 10.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWithImage(
              text: 'مشروبات',
              imagePath: 'assets/images/coffee-cup.png',
              edgeInsetsGeometry: EdgeInsets.symmetric(
                vertical: 5.h,
                horizontal: 10.w,
              ),
            ),
            SizedBox(width: 10.w),
            CustomButtonWithImage(
              text: 'سندوتشات',
              imagePath: 'assets/images/hamburger.png',
              edgeInsetsGeometry: EdgeInsets.symmetric(
                vertical: 5.h,
                horizontal: 10.w,
              ),
            ),
            SizedBox(width: 10.w),
            CustomButtonWithImage(
              text: 'بيتزا',
              imagePath: 'assets/images/pizza-slice.png',
              edgeInsetsGeometry: EdgeInsets.symmetric(
                vertical: 5.h,
                horizontal: 10.w,
              ),
            ),
            SizedBox(width: 10.w),
            CustomButtonTextOnly(
              text: 'الكل',
              edgeInsetsGeometry: EdgeInsets.symmetric(
                vertical: 20.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
