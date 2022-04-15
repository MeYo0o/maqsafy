import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors.dart';
import '../common_widgets/texts/text_styles.dart';

class SearchAndButtons extends StatelessWidget {
  const SearchAndButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/not-registered.png',
            height: 50.h,
          ),
          Image.asset(
            'assets/images/search.png',
            height: 50.h,
          ),
          SizedBox(
            width: MediaQuery.of(context).orientation == Orientation.portrait
                ? 230.w
                : 300.w,
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'إسم الطالب',
                hintStyle: AppTextStyles.sstArabicRomanStyle.copyWith(
                  fontSize: 16.sp,
                ),
                contentPadding: const EdgeInsets.only(
                  right: 20,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.searchBarColor,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
