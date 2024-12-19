import 'package:demo_application/modules/posts/controllers/post_controller.dart';
import 'package:demo_application/modules/users/controllers/user_controller.dart';
import 'package:get/get.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
    Get.lazyPut(() => PostController());
  }
}
