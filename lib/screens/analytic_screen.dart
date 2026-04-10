import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/finance/metric_item.dart';
import 'package:week_3_lab/widgets/finance/product_tile.dart';

class AnalyticScreen extends StatelessWidget {
  const AnalyticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analytics"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Revenue",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "\$12,450",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_upward, color: Colors.green),
                        SizedBox(width: 4),
                        Text("12%", style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MetricItem(label: "Orders", value: "320"),
                  MetricItem(label: "Users", value: "1.2K"),
                  MetricItem(label: "Revenue", value: "\$8.4K"),
                ],
              ),
              const SizedBox(height: 20),

              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(child: Text("Chart Placeholder")),
              ),

              const SizedBox(height: 20),

              const Text(
                "Top Products",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              ProductTile(
                name: "Wireless Headphones",
                sales: "120 sales",
                progress: 0.8,
              ),
              ProductTile(
                name: "Smart Watch",
                sales: "95 sales",
                progress: 0.6,
              ),
              ProductTile(
                name: "Bluetooth Speaker",
                sales: "70 sales",
                progress: 0.4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
