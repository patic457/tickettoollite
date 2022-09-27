import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
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
          child: Row(children: [Text('Address')]),
        ));
  }
}
