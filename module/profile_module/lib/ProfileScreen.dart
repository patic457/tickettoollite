import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  // const Profile({super.key});

  const ProfileScreen({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<ProfileScreen> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileScreen> {
  void _editAddressScreen() {
    Navigator.pushNamed(context, '/address');
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
            Navigator.pop(context);
          },
        ),
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
