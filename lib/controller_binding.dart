import 'package:e_shop1/presentation/state_controler/main_bottom_nav_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies(){
    Get.put(MainBottomNavController());
  }
}