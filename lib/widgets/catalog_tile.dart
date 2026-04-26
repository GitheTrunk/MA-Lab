import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/catalog_item.dart';

class CatalogTile extends StatelessWidget {
  const CatalogTile({super.key, required this.item});

  final CatalogItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: item.color,
          foregroundColor: Colors.white,
          child: Icon(item.icon),
        ),
        title: Text(item.name),
        subtitle: Text('${item.category} - \$${item.price.toStringAsFixed(0)}'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => context.push('/home/item/${item.id}'),
      ),
    );
  }
}
