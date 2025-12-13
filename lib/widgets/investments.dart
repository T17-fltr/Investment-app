import 'package:flutter/material.dart';

class FeaturedInvestment extends StatelessWidget {
  const FeaturedInvestment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Featured investment", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                investmentCard("Apple"),
                investmentCard("Google"),
                investmentCard("Amazon"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget investmentCard(String name) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          const SizedBox(height: 60),
          const Text("\$523.11  +12%", style: TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}
