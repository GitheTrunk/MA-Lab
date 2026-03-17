import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/buttons/app_small_text_button.dart';
import 'package:week_3_lab/widgets/menu/app_menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("My First App"),
        centerTitle: false,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Image.asset(
                "assets/images/logo_gic.png",
                fit: BoxFit.cover,
              ),
            ),
            AppMenuItem(
              title: 'Auth',
              icon: Icons.lock,
              subMenu: [
                AppMenuItem(title: 'Login', route: '/login'),
                AppMenuItem(title: 'Sign Up', route: '/signup'),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello, World!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            SizedBox(height: 8),
            Text(
              "Welcome to Flutter",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(height: 24),
            AppSmallTextButton(
              text: 'Go to Login',
              width: 150,
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
