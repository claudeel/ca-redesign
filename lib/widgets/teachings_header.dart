import 'package:flutter/material.dart';

class TeachingsHeader extends StatelessWidget {
  const TeachingsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // TODO: Navigate back
            },
          ),
          Expanded(
            child: Center(
              child: Text(
                'Church Teachings',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          const SizedBox(width: 40.0), // Spacer for balance
        ],
      ),
    );
  }
}