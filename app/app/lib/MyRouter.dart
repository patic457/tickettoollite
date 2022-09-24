import 'package:flutter/material.dart';
import 'package:main/MainScreen.dart';
import 'package:profile_module/ProfileScreen.dart';
import 'package:ticket_module/CreateTicketScreen.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => MainScreen(title: 'Soso Ticket Tool'));
      case '/profile':
        return MaterialPageRoute(
            builder: (_) => ProfileScreen(title: 'Profile Menu'));
      case '/createTicket':
        return MaterialPageRoute(builder: (_) => CreateTicketScreen());
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
