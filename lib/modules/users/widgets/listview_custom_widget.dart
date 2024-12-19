import 'package:demo_application/app_routes/routes_path.dart';
import 'package:demo_application/configs/app_colors.dart';
import 'package:demo_application/configs/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListviewCustomWidget extends StatelessWidget {
  ListviewCustomWidget({
    super.key,
    required this.addTitle,
    required this.addbody,
  });
  String addTitle;
  String addbody;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Get.toNamed(Routes.postsView);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: mediaQuery.height * 0.03),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: primaryAppColor.withOpacity(.2),
                child: const Text("A"),
              ),
              title: Text(
                addTitle,
                style: txt14_black,
              ),
              subtitle: Text(
                "20 minutes ago",
                style: txt12_black_normal,
              ),
              trailing: const Icon(Icons.more_horiz_outlined),
            ),
            SizedBox(
              height: mediaQuery.width * 0.02,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.messenger_outline_rounded,
                            color: lightBlack,
                          ),
                          Text("323"),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: redColor,
                          ),
                          Text("323"),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: mediaQuery.width * 0.7,
                        child: Text(
                          addbody,
                          style: txt14_black,
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.015,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            "https://static.vecteezy.com/system/resources/thumbnails/028/672/369/small_2x/sweet-tropical-fruits-and-mixed-berries-splash-of-juice-watermelon-banana-pineapple-strawberry-orange-mango-blueberry-cherry-raspberry-papaya-3d-vector-realistic-set-ai-generated-photo.jpg",
                            height: mediaQuery.height * 0.3,
                            width: mediaQuery.width * 0.7,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
