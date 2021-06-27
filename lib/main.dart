import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_app/src/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Youtube App',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [GetPage(name: "/", page: () => App())],
    );
  }
}
