import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/catalog_body.dart';

enum CatalogState { loaded, loading, empty, error }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CatalogState _catalogState = CatalogState.loaded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog'),
        actions: [
          IconButton(
            tooltip: 'Profile',
            onPressed: () => context.go('/profile'),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SegmentedButton<CatalogState>(
            segments: const [
              ButtonSegment(
                value: CatalogState.loaded,
                icon: Icon(Icons.inventory_2),
                label: Text('Loaded'),
              ),
              ButtonSegment(
                value: CatalogState.loading,
                icon: Icon(Icons.hourglass_top),
                label: Text('Loading'),
              ),
              ButtonSegment(
                value: CatalogState.empty,
                icon: Icon(Icons.inbox),
                label: Text('Empty'),
              ),
              ButtonSegment(
                value: CatalogState.error,
                icon: Icon(Icons.error_outline),
                label: Text('Error'),
              ),
            ],
            selected: {_catalogState},
            onSelectionChanged: (selection) {
              setState(() => _catalogState = selection.first);
            },
          ),
          const SizedBox(height: 16),
          CatalogBody(state: _catalogState),
        ],
      ),
    );
  }
}
