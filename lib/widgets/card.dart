import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Color(0xFF2C3E50), Color(0xFF4CA1AF)],
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total balance",
                style: TextStyle(color: Colors.white70)),
            SizedBox(height: 10),
            Text("\$24,109.10",
                style: TextStyle(fontSize: 28)),
            SizedBox(height: 6),
            Text("+ \$1,092.11 (12%) vs last month",
                style: TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
