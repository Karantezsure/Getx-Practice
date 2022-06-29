import 'package:get/get.dart';
import 'package:demo/pages/home/controller/home_controller.dart';
import 'package:demo/services/api_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ApiService());
    Get.put(HomeController());
  }
}
