import 'package:demo_application/app_routes/routes_path.dart';
import 'package:demo_application/data_binding.dart';
import 'package:demo_application/modules/posts/view/posts_view.dart';
import 'package:demo_application/modules/users/view/user_view.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static var initial = Routes.userview;

  static final routes = [
    GetPage(
        name: Routes.userview, page: () => UserView(), binding: DataBinding()),
    GetPage(
        name: Routes.postsView,
        page: () => PostsView(),
        binding: DataBinding()),
  ];
}
