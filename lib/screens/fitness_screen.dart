import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/dashboard/list_tile_card.dart';
import 'package:week_3_lab/widgets/dashboard/state_row_card.dart';

class FitnessScreen extends StatelessWidget {
  const FitnessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitness"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: false,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning! 💪",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "${today.day}/${today.month}/${today.year}",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StateRowCard(
                    label: 'STEPS',
                    value: '5000',
                    icon: Icons.directions_run,
                    color: Colors.blue.shade200,
                  ),
                  StateRowCard(
                    label: 'DISTANCE',
                    value: '2.5 km',
                    icon: Icons.map,
                    color: Colors.green.shade200,
                  ),
                  StateRowCard(
                    label: 'CALORIES',
                    value: '200 kcal',
                    icon: Icons.local_fire_department,
                    color: Colors.red.shade200,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Today's Activity",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Column(
                children: [
                  ListTileCard(
                    title: 'Push-ups',
                    subtitle: '10 reps',
                    icon: Icons.fitness_center,
                    onTap: () {},
                  ),
                  ListTileCard(
                    title: 'Running',
                    subtitle: '30 mins',
                    icon: Icons.directions_run,
                    onTap: () {},
                  ),
                  ListTileCard(
                    title: 'Cycling',
                    subtitle: '15 mins',
                    icon: Icons.pedal_bike,
                    onTap: () {},
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
