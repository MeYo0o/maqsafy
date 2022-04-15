import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/navigator_controller.dart';
import '../../core/constants/colors.dart';
import '../common_widgets/texts/custom_texts.dart';

class ProfileData extends StatelessWidget {
  const ProfileData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigatorController>(builder: (navC) {
      return navC.profileEnabled
          ? Container(
              height: 230,
              decoration: BoxDecoration(
                color: AppColors.lightGreen,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25.r),
                ),
              ),
              child: Container(
                // alignment: Alignment.topRight,
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 15,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 290.w),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    //TODO : Disable This Container
                                    navC.changeProfileStatus(false);
                                  },
                                  child: const Icon(
                                    Icons.cancel_outlined,
                                    color: AppColors.iconColor,
                                  ),
                                ),
                                const Spacer(),
                                const SSTArabicBold(
                                  text: '135',
                                  fontSize: 14,
                                ),
                                SizedBox(width: 5.w),
                                const SSTArabicMedium(
                                  text: 'رقم',
                                  fontSize: 14,
                                ),
                                SizedBox(width: 5.w),
                                const Icon(
                                  Icons.home,
                                  color: AppColors.iconColor,
                                ),
                              ],
                            ),
                          ),
                          const SSTArabicMedium(
                            text: 'محمد بن عبد الله الفلاج',
                            fontSize: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const SSTArabicMedium(
                                    text: 'ريال',
                                    fontSize: 12,
                                  ),
                                  SizedBox(width: 5.w),
                                  const SSTArabicBold(
                                    text: '15.00',
                                    fontSize: 14,
                                  ),
                                ],
                              ),
                              SizedBox(width: 5.w),
                              const SSTArabicMedium(
                                text: 'الحد اليومي',
                                fontSize: 14,
                              ),
                              SizedBox(width: 20.w),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const SSTArabicMedium(
                                    text: 'ريال',
                                    fontSize: 12,
                                  ),
                                  SizedBox(width: 5.w),
                                  const SSTArabicBold(
                                    text: '10,000',
                                    fontSize: 14,
                                  ),
                                ],
                              ),
                              SizedBox(width: 5.w),
                              const SSTArabicMedium(
                                text: 'الرصيد',
                                fontSize: 14,
                              ),
                              SizedBox(width: 5.w),
                              const Icon(
                                Icons.payment,
                                color: AppColors.iconColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/kid.png',
                      height: 63.h,
                    ),
                  ],
                ),
              ),
            )
          : const SizedBox();
    });
  }
}
