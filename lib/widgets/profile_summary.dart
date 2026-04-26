import 'package:flutter/material.dart';

class ProfileSummary extends StatelessWidget {
  const ProfileSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 44,
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              child: const Text('AK', style: TextStyle(fontSize: 28)),
            ),
            const SizedBox(height: 16),
            Text('Ari Kim', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 4),
            const Text('Product Design Student'),
          ],
        ),
      ),
    );
  }
}
