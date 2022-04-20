import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makan_yok_app/app_pages.dart';
// import 'package:get/get.dart';
// import 'package:makan_yok_app/detail_item.dart';
// import 'package:makan_yok_app/get_started.dart';
// import 'package:makan_yok_app/homepage.dart';
// import 'package:makan_yok_app/profile_view.dart';
// import 'package:makan_yok_app/webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Makan Yok',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppPages.Initial,
        getPages: AppPages.routes);
  }
}
