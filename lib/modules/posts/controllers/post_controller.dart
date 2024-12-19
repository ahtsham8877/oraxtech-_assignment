import 'dart:convert';
import 'package:demo_application/api_errors.dart';
import 'package:demo_application/configs/app_strings.dart';
import 'package:demo_application/model/posts_model.dart';
import 'package:demo_application/global_widgets/custom_snackbar.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PostController extends GetxController {
  final postsModel = PostsModel().obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getPostsapi();
  }

  Future<void> getPostsapi() async {
    isLoading.value = true;
    try {
      final response = await http.get(Uri.parse(postsUrl));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);

        if (jsonData != null) {
          // Parsing JSON data to PostsModel
          postsModel.value = PostsModel.fromJson(jsonData);
        } else {
          failedSnackBar(title: "No Data", message: "API returned no data.");
        }
      } else {
        getApiError(response);
      }
    } catch (e) {
      print("Error fetching data: $e");
      failedSnackBar(title: "Error", message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
