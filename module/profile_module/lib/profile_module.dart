import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  // const Profile({super.key});
  final Function(String) navigate;
  const Profile({
    Key? key,
    required this.navigate,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Column(children: [
          Text('Sunisa Mei'),
        ]),
      ),
    );
  }
}
