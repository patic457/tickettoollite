import 'package:flutter/material.dart';
import 'package:profile_module/profile_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Tool',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: ProfileRouter.generateRoute,
      initialRoute: '/profile',
    );
  }
}
