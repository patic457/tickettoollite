// ignore_for_file: depend_on_referenced_packages

// import 'package:app/app.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations(
//       [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

//   return runApp(const AppWidget());
// }

// import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:profile_module/profile_module.dart';
import 'package:tickettoollite/MyHomePage.dart';
import 'package:tickettoollite/MyHomePage2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // final Function(String) navigate;
  // const MyApp({
  //   Key? key,
  //   required this.navigate,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Tool',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: (route) {
        switch (route.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => MyHomePage(
                  navigate: (routeName) {
                    Navigator.of(_).pushNamed(routeName);
                  },
                  title: 'Soso Ticket Tool'),
            );
          case '/profile':
            return MaterialPageRoute(
              builder: (_) => Profile(
                  navigate: (routeName) {
                    Navigator.of(_).pushNamed(routeName);
                  },
                  title: 'Profile'),
            );
          case '/page2':
            return MaterialPageRoute(
              builder: (_) => MyHomePage2(
                  navigate: (routeName) {
                    Navigator.of(_).pushNamed(routeName);
                  },
                  title: 'Page2'),
            );
        }

        return MaterialPageRoute(
          builder: (_) => MyHomePage(
              navigate: (routeName) {
                Navigator.of(_).pushNamed(routeName);
              },
              title: 'Soso Ticket Tool'),
        );
      },
    );
  }
}



// // ignore_for_file: depend_on_referenced_packages

// // import 'package:app/app.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';

// // void main() {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   SystemChrome.setPreferredOrientations(
// //       [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

// //   return runApp(const AppWidget());
// // }

// import 'package:app/app.dart';
// import 'package:flutter/material.dart';
// import 'package:tickettoollite/MyHomePage.dart';
// import 'package:tickettoollite/MyHomePage2.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Ticket Tool',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const MyHomePage(title: 'Soso Ticket Tool'),
//         '/2': (context) => const MyHomePage2(title: 'Soso2'),
//       },
//     );
//   }
// }
