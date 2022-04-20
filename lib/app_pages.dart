import 'package:get/get.dart';
import 'package:makan_yok_app/detail_item.dart';
import 'package:makan_yok_app/get_started.dart';
import 'package:makan_yok_app/homepage.dart';
import 'package:makan_yok_app/profile_view.dart';
import 'package:makan_yok_app/webview.dart';

import 'app_routes.dart';

class AppPages{
  static const Initial = Routes.Root;

  static final routes = [
    GetPage(name: Routes.Root, page:() => GetStarted()),
    GetPage(name: Routes.Home, page:() => HomepageView()),
    GetPage(name: Routes.Detail, page:() => DetailItemView()),
    GetPage(name: Routes.Profile, page:() => ProfileView()),
    GetPage(name: Routes.Webview, page:() => WebviewPage()),
  ];





}