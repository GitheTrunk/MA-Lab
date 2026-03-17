import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/buttons/app_small_text_button.dart';

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
