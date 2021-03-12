import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SelectedController extends GetxController {
  static SelectedController get to => Get.find();
  RxString selectGroup = "".obs;
  void changeSelectedGroup(String value) {
    selectGroup(value);
  }
}
