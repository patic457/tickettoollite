import 'package:flutter/material.dart';
import 'package:profile_module/address_screen.dart';
import 'package:profile_module/profile_module.dart';

class ProfileRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/profile':
        return MaterialPageRoute(
            builder: (_) => Profile(title: 'Soso Profile Screen'));
      case '/address':
        return MaterialPageRoute(
            builder: (_) => AddressScreen(title: 'Soso Address Screen'));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
