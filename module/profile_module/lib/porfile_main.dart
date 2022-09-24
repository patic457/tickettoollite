import 'package:flutter/material.dart';
import 'package:profile_module/profile_route.dart';

void main() {
  runApp(const ProfileMainScreen());
}

class ProfileMainScreen extends StatelessWidget {
  const ProfileMainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Setting',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: ProfileRouter.generateRoute,
      initialRoute: '/profile',
    );
  }
}
