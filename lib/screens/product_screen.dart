import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/product/product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ProductCard(
              imageUrl:
                  "https://i.pinimg.com/1200x/8c/db/e1/8cdbe123010c380e20f264a8fdd57938.jpg",
              title: "Wireless Headphones",
              description: "high-quality",
              price: "\$99.99",
              backgroundColor: Colors.grey.shade200,
            ),
            SizedBox(height: 16),
            ProductCard(
              imageUrl:
                  "https://i.pinimg.com/736x/e5/8d/67/e58d67c42f8505085bcf84fd13935ba4.jpg",
              title: "AirPods Pro",
              description: "stylish and functional",
              price: "\$199.99",
              backgroundColor: Colors.grey.shade200,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
