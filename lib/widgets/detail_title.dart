import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  final int id;
  final String name;
  const DetailTitle({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // Margin around the widget
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center the row
        children: [
          CircleAvatar(
            radius: 24,
            child: Text(
              id.toString(),
              style: const TextStyle(
                fontSize: 32, // Match the title size
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Text(
            "${name[0].toUpperCase()}${name.substring(1)}",
            style: const TextStyle(
              fontSize: 32, // Make the title bigger
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
