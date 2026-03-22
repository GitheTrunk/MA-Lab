import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/dashboard/list_tile_card.dart';
import 'package:week_3_lab/widgets/dashboard/state_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 👋 Greeting
            const Text(
              "Hello, Student! 👋",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              "Here's your overview",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // 📊 Two Cards Row
            Row(
              children: [
                Expanded(
                  child: StateCard(
                    title: "12",
                    subtitle: "COURSES",
                    color: Colors.blue.shade200,
                    icon: Icons.menu_book,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: StateCard(
                    title: "3.8",
                    subtitle: "GPA",
                    color: Colors.pink.shade200,
                    icon: Icons.emoji_events,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 📋 List Section
            ListTileCard(
              icon: Icons.access_time,
              title: "Recent Activity",
              subtitle: "2 updates",
            ),
            ListTileCard(
              icon: Icons.assignment,
              title: "Assignments",
              subtitle: "3 pending",
            ),
            ListTileCard(
              icon: Icons.settings,
              title: "Settings",
              subtitle: "Profile & prefs",
            ),
          ],
        ),
      ),
    );
  }
}
