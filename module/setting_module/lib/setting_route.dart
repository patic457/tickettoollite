import 'package:app/MyRouter.dart';
import 'package:flutter/material.dart';
import 'package:setting_module/setting_module.dart';

class SettingRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/setting':
        return MaterialPageRoute(
            builder: (_) => SettingScreen(title: 'Soso Profile Screen'));
      // case '/address':
      //   return MaterialPageRoute(
      //       builder: (_) => AddressScreen(title: 'Soso Address Screen'));
      default:
        return MyRouter.generateRoute(settings);
    }
  }
}
