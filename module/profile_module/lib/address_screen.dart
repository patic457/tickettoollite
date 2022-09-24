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
          title: Text(widget.title),
        ),
        body: Container(
          child: Row(children: [Text('Address')]),
        ));
  }
}
