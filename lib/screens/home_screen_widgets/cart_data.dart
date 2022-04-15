import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maqsafy/core/constants/colors.dart';
import 'package:maqsafy/screens/common_widgets/buttons/custom_button_with_text.dart';
import 'package:maqsafy/screens/common_widgets/texts/custom_texts.dart';
import 'package:maqsafy/screens/home_screen_widgets/cart_item.dart';

class CartData extends StatelessWidget {
  const CartData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 100.h,
      child: Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SingleChildScrollView(
              reverse: true,
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                // shrinkWrap: true,
                // scrollDirection: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CartItem(quantity: 3, imagePath: 'assets/images/cat5.png'),
                  SizedBox(width: 10.w),
                  const CartItem(quantity: 1, imagePath: 'assets/images/cat4.png'),
                  SizedBox(width: 10.w),
                  const CartItem(quantity: 1, imagePath: 'assets/images/cat3.png'),
                  SizedBox(width: 10.w),
                  const CartItem(quantity: 2, imagePath: 'assets/images/cat2.png'),
                  SizedBox(width: 10.w),
                  const CartItem(quantity: 1, imagePath: 'assets/images/cat1.png'),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                CustomButtonTextOnly(text: 'شراء'),
                Spacer(),
                Row(
                  children: [
                    SSTArabicBold(
                      text: 'ريال',
                      fontSize: 15,
                      fontColor: AppColors.primaryColor,
                    ),
                    SizedBox(width: 10),
                    SSTArabicBold(
                      text: '5',
                      fontSize: 15,
                      fontColor: AppColors.primaryColor,
                    ),
                    SizedBox(width: 10),
                    SSTArabicMedium(
                      text: 'الإجمالي',
                      fontSize: 14,
                      fontColor: Colors.black,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
