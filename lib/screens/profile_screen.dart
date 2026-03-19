import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/buttons/app_small_text_button.dart';
import 'package:week_3_lab/widgets/profile/profile_state_items.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Profile"),
        centerTitle: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: const AssetImage("assets/images/profile.jpg"),
              ),
              SizedBox(height: 16),
              Text(
                "BUN Sengleang",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 4),
              Text(
                "Computer Science -- Year 4",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 16),
              ProfileStateItems(
                items: const {"5": "courses", "3.5": "GPA", "80": "credits"},
              ),
              Divider(thickness: 1, color: Colors.grey, height: 40),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppSmallTextButton(
                    width: 170,
                    text: "Edit Profile",
                    onPressed: () {},
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                  ),
                  AppSmallTextButton(
                    width: 170,
                    text: "Settings",
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blueAccent,
                    borderColor: Colors.blueAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
