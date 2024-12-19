import 'package:demo_application/configs/app_colors.dart';
import 'package:demo_application/configs/text_style.dart';
import 'package:demo_application/global_widgets/custom_appbar.dart';
import 'package:demo_application/global_widgets/custom_button.dart';
import 'package:demo_application/modules/posts/controllers/post_controller.dart';
import 'package:demo_application/modules/posts/widgets/custiom_text.dart';
import 'package:demo_application/modules/posts/widgets/custom_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostsView extends StatelessWidget {
  PostsView({super.key});
  final postController = Get.find<PostController>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

// im currently use here media query for responsiveness
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Profile",
        actions: [Icon(Icons.more_horiz_outlined)],
      ),
      body: Obx(() {
        if (postController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (postController.postsModel.value.data == null) {
          return const Center(child: Text("No Data Available"));
        }

        final data = postController.postsModel.value.data!;
        return Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // this data is dynimic because im getting this avatar , first name , last name and email from Posts apis
                    CircleAvatar(
                      radius: screenWidth * 0.12,
                      backgroundImage: NetworkImage(data.avatar ?? ""),
                    ),
                    SizedBox(height: screenHeight * 0.01),

                    Text("${data.firstName} ${data.lastName}",
                        style: txt18_black_blod),
                    Text(data.email ?? "", style: txt14_black_normal),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustiomText(
                      numbers: "232",
                      text: "Posts",
                    ),
                    CustiomText(
                      numbers: "345",
                      text: "Following",
                    ),
                    CustiomText(
                      numbers: "438K",
                      text: "Followers",
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      height: screenHeight * 0.06,
                      horizntalMargin: screenWidth * 0.03,
                      color: primaryAppColor,
                      text: Text(
                        "Follow",
                        style: txt16_white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      horizntalMargin: screenWidth * 0.03,
                      height: screenHeight * 0.06,
                      color: whiteColor,
                      borderColor: primaryAppColor,
                      text: Text(
                        "Message",
                        style: txt16_primary,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              const CustomGridView()
            ],
          ),
        );
      }),
    );
  }
}
