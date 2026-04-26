import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            const Text(
              'Ari is building mobile shopping flows with responsive layouts, '
              'route-based navigation, deep links, and resilient UI states.',
            ),
            const SizedBox(height: 20),
            Text('Stats', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            const Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(label: Text('12 orders')),
                Chip(label: Text('4 saved items')),
                Chip(label: Text('Gold member')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
