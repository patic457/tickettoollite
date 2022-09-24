import 'package:flutter/material.dart';
import 'package:profile_module/profile_module.dart';
import 'package:tickettoollite/MyHomePage.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => MyHomePage(title: 'Soso Ticket Tool'));
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile(title: 'Profile'));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
