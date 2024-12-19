import 'package:demo_application/configs/app_colors.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

successSnackBar({required String title, required String message}) {
  return Get.snackbar(
    title,
    message,
    backgroundColor: whiteColor,
    colorText: blackColor,
    duration: const Duration(seconds: 2),
    titleText: Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
    ),
    messageText: Text(
      message,
      style: const TextStyle(
        fontSize: 14,
        color: blackColor,
      ),
    ),
  );
}

failedSnackBar({required String title, required String message}) {
  return Get.snackbar(
    title,
    message,
    backgroundColor: redColor,
    borderColor: Colors.white,
    borderWidth: .8,
    colorText: whiteColor,
    duration: const Duration(seconds: 2),
    titleText: Text(title,
        style: const TextStyle(
            color: whiteColor, fontSize: 12.0, fontWeight: FontWeight.w600)),
    messageText: Text(
      message,
      style: const TextStyle(
          color: whiteColor, fontSize: 10.0, fontWeight: FontWeight.w400),
    ),
  );
}
