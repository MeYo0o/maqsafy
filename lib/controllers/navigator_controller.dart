import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maqsafy/screens/home_screen.dart';

class NavigatorController extends GetxController {
  double profileOpacity = 0.0;
  bool profileEnabled = false;
  void changeProfileStatus(bool newValue) {
    if (newValue) {
      profileEnabled = newValue;
      profileOpacity = 1.0;
      update();
    } else {
      profileOpacity = 0.0;
      profileEnabled = newValue;
      update();
    }
  }

  int currentIndex = 4;
  Widget currentScreen = const HomeScreen();

  void changeCurrentIndex(int newIndex) {
    currentIndex = newIndex;
    update();
  }

  void getCurrentScreen(int newIndex) {
    currentIndex = newIndex;
    switch (currentIndex) {
      case 0:
        currentScreen = const HomeScreen();
        update();
        break;
      default:
        currentScreen = const HomeScreen();
        update();
        break;
    }
  }
}
