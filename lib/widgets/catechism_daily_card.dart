import 'package:flutter/material.dart';

class CatechismDailyCard extends StatelessWidget {
  const CatechismDailyCard({super.key});

  @override
  Widget build(BuildContext context) {
    // Use LayoutBuilder to handle @xl responsiveness (switch to row on wide screens)
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWideScreen = constraints.maxWidth >= 1024; // Approximate for @xl
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Flex(
              direction: isWideScreen ? Axis.horizontal : Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Catechism Daily'.toUpperCase(),
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Text(
                        'The Desire for God',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          letterSpacing: -0.3,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The desire for God is written in the human heart, because man is created by God and for God...',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            'CCC 27',
                            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}