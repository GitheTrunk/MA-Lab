import 'package:flutter/material.dart';

class CatalogItem {
  const CatalogItem({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.description,
    required this.icon,
    required this.color,
  });

  final String id;
  final String name;
  final String category;
  final double price;
  final String description;
  final IconData icon;
  final Color color;

  static const items = [
    CatalogItem(
      id: 'bag',
      name: 'City Pack',
      category: 'Bags',
      price: 64,
      description: 'A compact everyday bag with a padded laptop pocket.',
      icon: Icons.backpack,
      color: Color(0xff00796b),
    ),
    CatalogItem(
      id: 'watch',
      name: 'Pulse Watch',
      category: 'Wearables',
      price: 129,
      description: 'Tracks workouts, sleep, reminders, and quick timers.',
      icon: Icons.watch,
      color: Color(0xff5d4037),
    ),
    CatalogItem(
      id: 'lamp',
      name: 'Focus Lamp',
      category: 'Workspace',
      price: 42,
      description: 'Warm desk lighting with dimming and a small footprint.',
      icon: Icons.light,
      color: Color(0xff6a1b9a),
    ),
  ];

  static CatalogItem? findById(String? id) {
    for (final item in items) {
      if (item.id == id) {
        return item;
      }
    }
    return null;
  }
}
