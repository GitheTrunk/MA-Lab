import 'package:flutter/material.dart';

import '../models/catalog_item.dart';
import '../screens/home_page.dart';
import 'catalog_tile.dart';
import 'status_panel.dart';

class CatalogBody extends StatelessWidget {
  const CatalogBody({super.key, required this.state});

  final CatalogState state;

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      CatalogState.loaded => Column(
        children: [
          for (final item in CatalogItem.items)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: CatalogTile(item: item),
            ),
        ],
      ),
      CatalogState.loading => const StatusPanel(
        icon: Icons.sync,
        title: 'Loading catalog',
        message: 'Products will appear here in a moment.',
        showProgress: true,
      ),
      CatalogState.empty => const StatusPanel(
        icon: Icons.inbox,
        title: 'No items yet',
        message: 'The catalog is empty. Check back after products are added.',
      ),
      CatalogState.error => const StatusPanel(
        icon: Icons.wifi_off,
        title: 'Could not load catalog',
        message: 'Please check your connection and try again.',
      ),
    };
  }
}
