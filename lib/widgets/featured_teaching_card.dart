import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/colors.dart';

class FeaturedTeachingCard extends StatelessWidget {
  const FeaturedTeachingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        color: Colors.white.withOpacity(0.7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        elevation: 0,
        shadowColor: Colors.black.withOpacity(0.05),
        child: InkWell(
          onTap: () {
            context.go('/teachings'); // Navigate to teachings
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Featured Teaching',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 16.0),
                      ),
                      const SizedBox(height: 4.0),
                      const Text(
                        'The Four Marks of the Church',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      const SizedBox(height: 8.0),
                      TextButton(
                        onPressed: null, // Handled by parent InkWell
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Learn More'),
                            Icon(Icons.arrow_forward, size: 16.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Icon(Icons.school, color: AppColors.primary, size: 40.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}