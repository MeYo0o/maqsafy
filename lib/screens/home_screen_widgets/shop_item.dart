import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maqsafy/controllers/navigator_controller.dart';

import '../../core/constants/colors.dart';
import '../common_widgets/texts/custom_texts.dart';

class ShopItem extends StatelessWidget {
  const ShopItem({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigatorController>(builder: (navC) {
      return Container(
        // height: 220.h,
        // width: 150.w,
        // margin: EdgeInsets.symmetric(
        //   horizontal: 10.w,
        //   vertical: 10.h,
        // ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: AppColors.itemContainerColor,
                    borderRadius: BorderRadius.circular(5.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10.r,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(children: [
                    Icon(
                      Icons.directions_run_rounded,
                      color: AppColors.primaryColor,
                      size: 18.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.h),
                      child: const TajawalMedium(
                        text: '200 Kcal',
                        fontSize: 12,
                      ),
                    ),
                  ]),
                ),
                Icon(
                  Icons.report_rounded,
                  color: AppColors.primaryColor,
                  size: 18.sp,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Center(
              child: Image.asset(
                imagePath,
                height: 110.h,
              ),
            ),
            SizedBox(height: 5.h),
            const SSTArabicRoman(
              text: 'عصير تفاح 250مل',
              fontSize: 14,
              fontColor: AppColors.itemContainerTitleColor,
            ),
            SizedBox(height: 3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.5.h),
                  child: const SSTArabicBold(
                    text: '5',
                    fontSize: 12,
                    fontColor: AppColors.primaryColor,
                  ),
                ),
                SizedBox(width: 2.w),
                const SSTArabicRoman(
                  text: '  : الكمية بالمخزون',
                  fontSize: 14,
                  fontColor: AppColors.itemContainerTitleColor,
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SSTArabicMedium(
                  text: 'ريال',
                  fontSize: 12,
                  fontColor: AppColors.primaryColor,
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.only(top: 4.h),
                  child: const SSTArabicBold(
                    text: '7.50',
                    fontSize: 15,
                    fontColor: AppColors.primaryColor,
                  ),
                ),
                SizedBox(width: 10.w),
                InkWell(
                  onTap: () {
                    //TODO : Enable Profile Container
                    navC.changeProfileStatus(true);
                  },
                  child: Icon(
                    Icons.add_circle,
                    color: AppColors.primaryColor,
                    size: 35.sp,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
