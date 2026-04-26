import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/profile_details.dart';
import '../widgets/profile_summary.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          tooltip: 'Home',
          onPressed: () => context.go('/home'),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth >= 700;
          final avatar = const ProfileSummary();
          final details = const ProfileDetails();

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: isWide
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 260, child: avatar),
                      const SizedBox(width: 24),
                      const Expanded(child: ProfileDetails()),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [avatar, const SizedBox(height: 20), details],
                  ),
          );
        },
      ),
    );
  }
}
