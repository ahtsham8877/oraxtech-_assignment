import 'package:demo_application/configs/text_style.dart';
import 'package:demo_application/global_widgets/custom_appbar.dart';
import 'package:demo_application/modules/users/controllers/user_controller.dart';
import 'package:demo_application/modules/users/widgets/listview_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserView extends StatelessWidget {
  UserView({super.key});
  final userController = Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Explore"),
      body: Obx(() {
        if (userController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (userController.userModelList.isEmpty) {
          return const Center(child: Text("No data available."));
        }
        return ListView.builder(
          itemCount: userController.userModelList.length,
          itemBuilder: (context, index) {
            // body and title is dynamic because im getting this data form  user api
            return ListviewCustomWidget(
              addbody: userController.userModelList[index].body ?? "No body",
              addTitle: userController.userModelList[index].title ?? "No Title",
            );
          },
        );
      }),
    );
  }
}
