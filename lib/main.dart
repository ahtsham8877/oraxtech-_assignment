import 'package:demo_application/app_routes/app_pages.dart';
import 'package:demo_application/modules/posts/view/posts_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // If you want to go directly to the PostsView screen, just uncomment this line.

      // home: PostsView(),

      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}


/// im currently use here mvvvm code structure  
/// I have created this proper design with api integrations with proper error handling , and the design screenshot is saved in assets/images. 
/// If you have any queries related to my code, I am available to answer them.
