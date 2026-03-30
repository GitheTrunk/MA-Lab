import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/buttons/app_small_text_button.dart';
import 'package:week_3_lab/widgets/profile/profile_state_items.dart';

class SocialProfileScreen extends StatelessWidget {
  const SocialProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Social Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                    ),
                  ),
                ),

                const Positioned(
                  bottom: -40,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 36,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32),
            const Text(
              "BUN Sengleang",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Flutter Developer | Phnom Penh",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            ProfileStateItems(
              items: const {
                "150": "Followers",
                "200": "Following",
                "50": "Posts",
              },
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppSmallTextButton(
                  text: 'Follow',
                  width: 170,
                  backgroundColor: Colors.indigoAccent,
                  foregroundColor: Colors.white,
                  onPressed: () {},
                ),
                AppSmallTextButton(
                  text: 'Message',
                  width: 170,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.indigoAccent,
                  borderColor: Colors.indigoAccent,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
