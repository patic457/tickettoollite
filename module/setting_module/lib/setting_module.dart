import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  // const Profile({super.key});

  const SettingScreen({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<SettingScreen> createState() => _PSettingScreenState();
}

class _PSettingScreenState extends State<SettingScreen> {
  void _editAddressScreen() {
    // Navigator.pushNamed(context, '/address');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(widget.title),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              'Moggie Setting',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Setting'),
                TextButton(
                  onPressed: _editAddressScreen,
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
