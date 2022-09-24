import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  // const Profile({super.key});
  const Profile({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void _editAddressScreen() {
    Navigator.pushNamed(context, '/address');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              'Sunisa Mei',
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
                Text('address'),
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
