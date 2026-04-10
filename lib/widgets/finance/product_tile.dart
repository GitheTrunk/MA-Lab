import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String name;
  final String sales;
  final double progress;
  const ProductTile({
    super.key,
    required this.name,
    required this.sales,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              Text(sales, style: const TextStyle(color: Colors.grey)),
            ],
          ),

          const SizedBox(height: 8),

          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey.shade300,
            color: Colors.indigo,
          ),
        ],
      ),
    );
  }
}
