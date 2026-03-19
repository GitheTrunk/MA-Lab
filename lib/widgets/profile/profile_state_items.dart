import 'package:flutter/material.dart';

class ProfileStateItems extends StatelessWidget {
  final Map<String, String> items;

  const ProfileStateItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final entries = items.entries.toList();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: entries
          .map(
            (entry) => Column(
              children: [
                Text(
                  entry.key,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  entry.value.toUpperCase(),
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
