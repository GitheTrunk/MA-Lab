import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/catalog_item.dart';
import '../models/checkout_result.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key, required this.item});

  final CatalogItem? item;

  @override
  Widget build(BuildContext context) {
    if (item == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Checkout')),
        body: const Center(child: Text('This item is no longer available.')),
      );
    }

    final selectedItem = item!;

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: selectedItem.color,
                foregroundColor: Colors.white,
                child: Icon(selectedItem.icon),
              ),
              title: Text(selectedItem.name),
              subtitle: Text('\$${selectedItem.price.toStringAsFixed(0)}'),
            ),
            const Spacer(),
            FilledButton.icon(
              onPressed: () => context.pop(CheckoutResult.confirmed),
              icon: const Icon(Icons.check),
              label: const Text('Confirm order'),
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              onPressed: () => context.pop(CheckoutResult.cancelled),
              icon: const Icon(Icons.close),
              label: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}
