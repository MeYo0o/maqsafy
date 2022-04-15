import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:maqsafy/controllers/navigator_controller.dart';
import 'package:maqsafy/screens/home_screen_widgets/products.dart';
import 'package:maqsafy/screens/home_screen_widgets/profile_data.dart';
import '../../core/constants/colors.dart';
import 'cart_data.dart';
import 'categories.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: true,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.bottomContainerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GetBuilder<NavigatorController>(
              builder: (navC) {
                return AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: navC.profileOpacity,
                  curve: Curves.easeIn,
                  child: Stack(
                    children: const [
                      ProfileData(),
                      CartData(),
                    ],
                  ),
                );
              },
            ),
            //categories
            const Categories(),
            //products
            const Products(),
          ],
        ),
      ),
    );
  }
}
