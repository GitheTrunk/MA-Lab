import 'package:flutter/material.dart';
import 'package:week_3_lab/screens/home_screen.dart';
import 'package:week_3_lab/auth/login_screen.dart';

class RouteApp extends StatelessWidget {
  const RouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/login": (context) => const LoginScreen(),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return MaterialPageRoute(
              builder: (context) => const HomeScreen(),
              settings: settings,
            );
          case "/login":
            return MaterialPageRoute(
              builder: (context) => const LoginScreen(),
              settings: settings,
            );
          default:
            return null;
        }
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: const Text('Route Not Found')),
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
          settings: settings,
        );
      },
    );
  }
}
