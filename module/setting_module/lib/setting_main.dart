import 'package:flutter/material.dart';
import 'package:setting_module/setting_route.dart';

void main() {
  runApp(const SettingMainScreen());
}

class SettingMainScreen extends StatelessWidget {
  const SettingMainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Tool',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: SettingRouter.generateRoute,
      initialRoute: '/setting',
    );
  }
}
