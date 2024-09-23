import 'package:get/get.dart';

import 'second_controller.dart';

class SecondBinding implements Bindings {
  @override
  void dependencies() => Get.lazyPut(() => SecondController());
}
