import 'package:app/MyRouter.dart';
import 'package:flutter/material.dart';
import 'package:main/MainScreen.dart';
import 'package:profile_module/ProfileScreen.dart';
import 'package:profile_module/address_screen.dart';

class ProfileRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MyRouter.generateRoute(settings);
      case '/profile':
        return MaterialPageRoute(
            builder: (_) => ProfileScreen(title: 'Soso Profile Screen'));
      case '/address':
        return MaterialPageRoute(
            builder: (_) => AddressScreen(title: 'Soso Address Screen'));
      default:
        return MyRouter.generateRoute(settings);
    }
  }
}
