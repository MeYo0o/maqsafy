import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maqsafy/screens/home_screen_widgets/shop_item.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return OrientationBuilder(
    // builder: (context, orientation) =>

    return GridView.count(
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.h),
      childAspectRatio:
          MediaQuery.of(context).orientation == Orientation.portrait
              ? 3 / 4
              : 1 / 1.1,
      crossAxisCount:
          MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
      crossAxisSpacing: 10.w,
      mainAxisSpacing: 10.h,
      // padding: EdgeInsets.symmetric(horizontal: 10.w),
      children: const [
        ShopItem(imagePath: 'assets/images/juice.png'),
        ShopItem(imagePath: 'assets/images/chipsy.png'),
        ShopItem(imagePath: 'assets/images/cookies.png'),
        ShopItem(imagePath: 'assets/images/mnms.png'),
        ShopItem(imagePath: 'assets/images/lunchbox.png'),
        ShopItem(imagePath: 'assets/images/icecream.png'),
      ],
    );
    // );
  }
}
