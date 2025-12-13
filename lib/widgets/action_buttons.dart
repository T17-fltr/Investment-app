import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  Widget button(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(icon),
        ),
        const SizedBox(height: 6),
        Text(label),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          button(Icons.arrow_upward, "Send"),
          button(Icons.arrow_downward, "Receive"),
          button(Icons.swap_horiz, "Swap"),
        ],
      ),
    );
  }
}
