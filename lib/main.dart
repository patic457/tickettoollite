import 'package:flutter/material.dart';
import 'package:profile_module/profile_module.dart';
import 'package:tickettoollite/MyHomePage.dart';
import 'package:tickettoollite/MyHomePage2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  materialPageRoute(route) {
    switch (route.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => MyHomePage(
              navigate: (routeName) {
                Navigator.of(_).pushNamed(routeName);
              },
              title: 'Soso Ticket Tool'),
        );
      case '/2':
        return MaterialPageRoute(
          builder: (_) => MyHomePage2(
              navigate: (routeName) {
                Navigator.of(_).pushNamed(routeName);
              },
              title: 'Soso Ticket Tool'),
        );
      case '/profile':
        return MaterialPageRoute(
          builder: (_) => Profile(
              navigate: (routeName) {
                Navigator.of(_).pushNamed(routeName);
              },
              title: 'Profile'),
        );
      case '/page2':
        return MaterialPageRoute(
          builder: (_) => MyHomePage2(
              navigate: (routeName) {
                Navigator.of(_).pushNamed(routeName);
              },
              title: 'Page2'),
        );
    }
    return MaterialPageRoute(
      builder: (_) => MyHomePage(
          navigate: (routeName) {
            Navigator.of(_).pushNamed(routeName);
          },
          title: 'Soso Ticket Tool'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Tool',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}
