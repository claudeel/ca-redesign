import 'package:flutter/material.dart';

class SaintOfTheDayCard extends StatelessWidget {
  const SaintOfTheDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Saint of the Day'.toUpperCase(),
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'St. Thérèse of Lisieux',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Virgin and Doctor of the Church.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Container(
              width: 80.0,
              height: 80.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuCtHba1UUZynsF7X46Ed1YwKtwGBJQe0_jbMC2JpKBIkGx8lazccpYlvy4A1v9VludskGl823BEKeRr9K2wUJwai8S-wxrgfyPWIempcoCd260K3rjFGTYtx8SpFOmNph-v2kR0ebP7HiahwkU8h-SwHv55Wyq7sVUlF5MccxQc90GXwLRBwgwXVXdrk4fpdHk_IwP1Xpso96HeO2SkwZXJ1Y60sbVipNyLXy57DS4Jyp0YekCippnFVsIlmjdMMk9fXkKBXI89vQEH',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}