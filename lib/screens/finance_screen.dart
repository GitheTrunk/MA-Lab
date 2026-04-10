import 'package:flutter/material.dart';
import 'package:week_3_lab/widgets/finance/action_item.dart';
import 'package:week_3_lab/widgets/finance/transaction_tile.dart';

class FinanceScreen extends StatelessWidget {
  const FinanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E2C),
        foregroundColor: Colors.white,
        title: const Text("My Wallet"),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,

              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1E1E2C), Color(0xFF3A3A5A)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Balance",
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "\$5,230.00",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF1E1E2C),
                    child: Icon(
                      Icons.account_balance_wallet,
                      color: Color(0xFF3A3A5A),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionItem(label: "Send", icon: Icons.send),
                ActionItem(label: "Receive", icon: Icons.download),
                ActionItem(label: "Bills", icon: Icons.receipt_long),
                ActionItem(label: "Top Up", icon: Icons.add_circle_outline),
              ],
            ),
            SizedBox(height: 24),
            Text(
              "Recent Transactions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TransactionTile(
              icon: Icons.shopping_bag,
              title: "Grocery Store",
              date: "Aug 20, 2024",
              amount: "-\$120.50",
              isExpense: true,
            ),
            TransactionTile(
              icon: Icons.attach_money,
              title: "Salary",
              date: "Aug 15, 2024",
              amount: "+\$3,000.00",
              isExpense: false,
            ),
          ],
        ),
      ),
    );
  }
}
