import 'package:flutter/material.dart';
import 'package:app/TicketRouter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Tool',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: TicketRouter.generateRoute,
      initialRoute: '/',
    );
  }
}
