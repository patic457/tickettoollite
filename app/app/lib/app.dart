import 'package:flutter/material.dart';
import 'package:main/main.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'DB Heaven'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (route) {
        switch (route.name) {
          case '/main':
            return MaterialPageRoute(
              builder: (_) => MainPage(
                // title: "Main",
                // string1: AllFunction().helloFromModuleTopUp(),
                // string2: AllFunction().calculateMoney(10, 20),
                navigate: (routeName) {
                  Navigator.of(_).pushNamed(routeName);
                },
                // widget1: AllFunction().testloadWidget(),
                // test: (map, routeName) {
                //   if (map.isNotEmpty) {
                //     Navigator.of(_).pushNamed(routeName, arguments: map);
                //   }
                // },
              ),
            );

          // case '/my_module':
          //   return PageRouteBuilder(
          //     settings: route,
          //     pageBuilder: (context, animation, secondaryAnimation) =>
          //         const MainView(view: FirstPage()),
          //   );

        }

        return MaterialPageRoute(
          builder: (_) => MainPage(
            // title: "Main",
            // string1: AllFunction().helloFromModuleTopUp(),
            // string2: AllFunction().calculateMoney(10, 20),
            navigate: (routeName) {
              Navigator.of(_).pushNamed(routeName);
            },
            // widget1: AllFunction().testloadWidget(),
          ),
        );
      },
    );
  }
}
