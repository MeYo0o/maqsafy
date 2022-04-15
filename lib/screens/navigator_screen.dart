import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:maqsafy/controllers/navigator_controller.dart';
import 'package:maqsafy/core/constants/colors.dart';
import 'package:maqsafy/screens/common_widgets/texts/text_styles.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigatorController>(
      init: NavigatorController(),
      builder: (navC) {
        return Scaffold(
          body: navC.currentScreen,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navC.currentIndex,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: AppColors.navigationBarUnselected,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (int newIndex) {
              navC.changeCurrentIndex(newIndex);
            },
            selectedLabelStyle: AppTextStyles.sstArabicMediumStyle.copyWith(
              color: AppColors.primaryColor,
              fontSize: 11,
              height: 1.5,
            ),
            unselectedLabelStyle: AppTextStyles.sstArabicMediumStyle.copyWith(
              color: AppColors.navigationBarUnselected,
              fontSize: 11,
              height: 1.5,
            ),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.ellipsis),
                label: 'المزيد',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.cartShopping),
                label: 'الطلبات المسبقة',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.noteSticky),
                label: 'المبيعات',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.wallet),
                label: 'المحفظة',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.houseChimney),
                label: 'الرئيسية',
              ),
            ],
          ),
        );
      },
    );
  }
}
