import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_app/src/app.dart';
import 'package:youtube_app/src/binding/init_binding.dart';
import 'package:youtube_app/src/components/youtube_detail.dart';

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
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => App()),
        GetPage(name: "/detail/:videoId", page: () => YoutubeDetail()),
      ],
    );
  }
}
