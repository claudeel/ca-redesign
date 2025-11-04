import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.health_and_safety, // Approximation for 'health_cross'
            size: 32.0,
          ),
          Expanded(
            child: Center(
              child: Text(
                'Peace be with you',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search, size: 28.0),
            onPressed: () {}, // TODO: Implement search
          ),
        ],
      ),
    );
  }
}