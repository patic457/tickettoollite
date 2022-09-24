import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  var chText = "Profile";
  int _selectedIndex = 0;

  void _changeText() {
    setState(() {
      chText = 'Hi';
    });
  }

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  final List<Widget> _screenWidget = <Widget>[];

  final List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.house),
      label: 'Home',
    ),
    // BottomNavigationBarItem(
    //   icon: Icon(FontAwesomeIcons.productHunt),
    //   label: 'Dispatcher',
    // ),
    const BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.clockRotateLeft),
      label: 'History',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _createTicket() {
    Navigator.pushNamed(context, '/create');
  }

  @override
  Widget build(BuildContext context) {
    Widget floatingActionButtonv1 = FloatingActionButton(
      backgroundColor: Colors.green[900],
      child: const Icon(FontAwesomeIcons.plus),
      onPressed: () {},
    );

    Widget bottomNavigationBarv1 = BottomNavigationBar(
      items: _menuBar,
      currentIndex: _selectedIndex,
      elevation: 4.0,
      selectedItemColor: Colors.green,
      unselectedItemColor: const Color(0xFF9D9D9D),
      onTap: _onItemTapped,
    );

    AppBar appbarv1 = AppBar(
      title: Text(widget.title),
    );

    Widget bodyv1 = Center(
      child: ElevatedButton(
        child: Text(chText),
        onPressed: () {},
      ),
    );

    Widget bodyv2 = Center();

    return Scaffold(
      appBar: appbarv1,
      body: bodyv2,
      // bottomNavigationBar: bottomNavigationBarv1,
      // floatingActionButton: floatingActionButtonv1,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
