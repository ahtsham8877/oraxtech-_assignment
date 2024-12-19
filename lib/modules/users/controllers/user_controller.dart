import 'dart:convert';
import 'package:demo_application/api_errors.dart';
import 'package:demo_application/configs/app_strings.dart';
import 'package:demo_application/model/user_model.dart';
import 'package:demo_application/global_widgets/custom_snackbar.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  final userModelList = <UserModel>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getUserApiData();
  }

  Future<void> getUserApiData() async {
    isLoading.value = true;
    try {
      final response = await http.get(
        Uri.parse(userURl),
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        if (jsonData.isNotEmpty) {
          userModelList.assignAll(
            jsonData.map((data) => UserModel.fromJson(data)).toList(),
          );
          print("First body data: ${userModelList.first.body}");
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
