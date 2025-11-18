import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
import '../widgets/home_header.dart';
import '../widgets/mass_readings_card.dart';
import '../widgets/daily_reflection_card.dart';
import '../widgets/saint_prayer_grid.dart';
import '../widgets/featured_teaching_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final formattedDate = DateFormat('EEEE, MMMM d').format(today);
    final liturgicalDate = 'Twenty-seventh Sunday in Ordinary Time'; // TODO: Make dynamic

    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 112.0), // Space for bottom nav + padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeHeader(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  formattedDate,
                  style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  liturgicalDate,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          const MassReadingsCard(),
          const SizedBox(height: 24.0),
          const DailyReflectionCard(),
          const SizedBox(height: 12.0),
          const SaintPrayerGrid(),
          const SizedBox(height: 12.0),
          const FeaturedTeachingCard(),
        ],
      ),
    );
  }
}