import 'package:get/get.dart';
import 'package:is_odd_mobile/Controller/is_odd_controller.dart';
import 'package:is_odd_mobile/Services/is_odd_service.dart';

class IsOddBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<IsOddController>(IsOddController(IsOddService()));
  }
}
