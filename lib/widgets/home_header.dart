import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 48.0), // Spacer
          Expanded(
            child: Center(
              child: Text(
                'Welcome',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18.0),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.settings, size: 24.0),
            onPressed: () {}, // TODO: Settings
          ),
        ],
      ),
    );
  }
}