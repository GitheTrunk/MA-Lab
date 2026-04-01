import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/cards/team_card.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final team = [
      {"name": "Leang", "role": "Researcher"},
      {"name": "Leang", "role": "Developer"},
      {"name": "Leang", "role": "Manager"},
      {"name": "Leang", "role": "Tester"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Team"),
        centerTitle: false,
        backgroundColor: Colors.deepOrangeAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: team.map((member) {
            return TeamCard(name: member["name"]!, role: member["role"]!);
          }).toList(),
        ),
      ),
    );
  }
}
