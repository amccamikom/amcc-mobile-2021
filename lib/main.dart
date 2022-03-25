import 'package:flutter/material.dart';
import 'package:makan_yok_app/get_started.dart';
import 'package:makan_yok_app/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Makan Yok',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => GetStarted(),
          '/homepage': (context) => HomepageView(),
        });
  }
}
