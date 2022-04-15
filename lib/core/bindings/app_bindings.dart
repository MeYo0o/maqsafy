import 'package:get/get.dart';
import 'package:maqsafy/controllers/home_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
