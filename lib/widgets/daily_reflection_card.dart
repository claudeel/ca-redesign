import 'package:catholic_app_redesign/constants/colors.dart';
import 'package:flutter/material.dart';

class DailyReflectionCard extends StatelessWidget {
  const DailyReflectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        color: AppColors.cardDark.withOpacity(0.7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        elevation: 0,
        shadowColor: Colors.black.withOpacity(0.05),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daily Reflection',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              const Text(
                '"True humility is not thinking less of yourself; it is thinking of yourself less." - C.S. Lewis. Let us consider how we can serve others today...',
                style: TextStyle(fontSize: 14.0),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8.0),
              TextButton(
                onPressed: () {}, // TODO: Expand reflection
                child: const Text('Read More'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}