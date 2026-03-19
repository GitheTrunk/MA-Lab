import 'package:flutter/material.dart';
import 'package:week_3_lab/auth/signup_screen.dart';
import 'package:week_3_lab/screens/home_screen.dart';
import 'package:week_3_lab/auth/login_screen.dart';
import 'package:week_3_lab/splash/welcome_screen.dart';
import 'package:week_3_lab/screens/counter_screen.dart';
import 'package:week_3_lab/screens/profile_screen.dart';

class RouteApp extends StatelessWidget {
  const RouteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/welcome",
      routes: {
        "/": (context) => const HomeScreen(),
        "/welcome": (context) => const WelcomeScreen(),
        "/login": (context) => const LoginScreen(),
        "/signup": (context) => const SignupScreen(),
        "/counter": (context) => const CounterScreen(),
        "/profile": (context) => const ProfileScreen(),
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
          case "/signup":
            return MaterialPageRoute(
              builder: (context) => const SignupScreen(),
              settings: settings,
            );
          case "/welcome":
            return MaterialPageRoute(
              builder: (context) => const WelcomeScreen(),
              settings: settings,
            );
          case "/counter":
            return MaterialPageRoute(
              builder: (context) => const CounterScreen(),
              settings: settings,
            );
          case "/profile":
            return MaterialPageRoute(
              builder: (context) => const ProfileScreen(),
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
