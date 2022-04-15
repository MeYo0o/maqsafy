import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maqsafy/core/bindings/app_bindings.dart';
import 'package:get/get.dart';

import 'core/constants/colors.dart';
import 'core/constants/design_screen_size.dart';
import 'screens/navigator_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  //
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(const MaqsafyApp());
}

class MaqsafyApp extends StatelessWidget {
  const MaqsafyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: kDesignScreenSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
        return GetMaterialApp(
          title: 'Maqsafy',
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          initialBinding: AppBindings(),
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
              primary: AppColors.primaryColor,
              secondary: AppColors.secondaryColor,
            ),
          ),
          home: const NavigationScreen(),
        );
      },
    );
  }
}
