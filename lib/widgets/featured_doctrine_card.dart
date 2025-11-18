import 'package:flutter/material.dart';
import '../constants/colors.dart';

class FeaturedDoctrineCard extends StatelessWidget {
  const FeaturedDoctrineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        elevation: 2.0,
        child: Column(
          children: [
            Container(
              height: 200.0, // Aspect 16/10 approx
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuDB0lWOnbGAavXY-dhWWyyLaO2UMlvYi8lDgvDp8hGzIUaDefV83fhewY6BfcOldsqOQQJTKy07Unt04NKi_xt7gIOU1dWowJ3DqExO0VeK1cN3nYOIkRkoX72-fTD_UF-QH2wgr3poitXl6USZHX9s0wAVEi03U7iem3lti626e2NDgz0DZmn0AVPP2E6QLBa-A3XD8auqtWOJN26zKg1U84qkXcEAkP5Ig-zqnBXKD3j2fz8uDbonNw72jERcBcTs1cQVfXnuTTSt',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Four Marks of the Church',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Discover the essential features of the Church as described in the Nicene Creed: One, Holy, Catholic, and Apostolic.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {}, // TODO: Navigate to details
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999.0)), // full rounded
                    ),
                    child: const Text('Learn More'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}