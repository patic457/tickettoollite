import 'package:flutter/material.dart';
import 'package:main/MainScreen.dart';
import 'package:profile_module/porfile_main.dart';
import 'package:setting_module/setting_main.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => MainScreen(title: 'Soso Ticket Tool'),
        );
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfileMainScreen());
      case '/setting':
        return MaterialPageRoute(builder: (_) => SettingMainScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }

  // Route<dynamic> generateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case '/':
  //       return MaterialPageRoute(
  //           builder: (_) => MyHomePage(title: 'Soso Ticket Tool'));
  //     case '/profile':
  //       return MaterialPageRoute(
  //           builder: (_) => Profile(title: 'Soso Ticket Tool'));
  //     default:
  //       return MaterialPageRoute(
  //           builder: (_) => Scaffold(
  //                 body: Center(
  //                     child: Text('No route defined for ${settings.name}')),
  //               ));
  //   }
  // }
}
