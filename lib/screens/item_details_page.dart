import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/catalog_item.dart';
import '../models/checkout_result.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({super.key, required this.item});

  final CatalogItem? item;

  @override
  Widget build(BuildContext context) {
    if (item == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Item not found')),
        body: const Center(child: Text('No catalog item matches this link.')),
      );
    }

    final selectedItem = item!;

    return Scaffold(
      appBar: AppBar(title: Text(selectedItem.name)),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Icon(selectedItem.icon, size: 88, color: selectedItem.color),
          const SizedBox(height: 20),
          Text(
            selectedItem.name,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(selectedItem.description),
          const SizedBox(height: 16),
          Text(
            '\$${selectedItem.price.toStringAsFixed(0)}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () async {
              final result = await context.push<CheckoutResult>(
                '/checkout/${selectedItem.id}',
              );
              if (!context.mounted || result == null) {
                return;
              }
              final message = switch (result) {
                CheckoutResult.confirmed => 'Checkout complete',
                CheckoutResult.cancelled => 'Checkout cancelled',
              };
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
            },
            icon: const Icon(Icons.shopping_cart_checkout),
            label: const Text('Checkout'),
          ),
        ],
      ),
    );
  }
}
