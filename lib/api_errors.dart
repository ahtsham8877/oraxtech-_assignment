import 'package:demo_application/global_widgets/custom_snackbar.dart';

getApiError(response) {
  switch (response.statusCode) {
    case 400:
      failedSnackBar(
          title: "${response.statusCode}",
          message: "${response.body["message"] ?? ""}");
      break;
    case 401:
      failedSnackBar(
          title: "${response.statusCode}",
          message: "UnAuthorised Error: Token has been Expired");
      break;
    case 403:
      failedSnackBar(
          title: "${response.statusCode}",
          message: "Bad Request or Url not found");
      break;
    case 404:
      failedSnackBar(
          title: "${response.statusCode}", message: "Invalid URl: Not Found");
      break;
    case 500:
      failedSnackBar(
          title: "${response.statusCode}", message: "Internal Server Error");
      break;
    default:
      failedSnackBar(
          title: "${response.statusCode ?? "Error"}",
          message: "Error Occurred while Communication with Server");
  }
}
