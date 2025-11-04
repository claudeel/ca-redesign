import 'package:flutter/material.dart';
import '../widgets/app_header.dart';
import '../widgets/daily_reading_card.dart';
import '../widgets/discover_section.dart';
import '../widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppHeader(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 8.0),
                  child: Text(
                    'Tuesday, 20th Week in Ordinary Time',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const DailyReadingCard(),
                const DiscoverSection(),
                const SizedBox(height: 80.0), // Space for bottom nav
              ],
            ),
          ),
          // Bottom navigation (fixed)
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNav(),
          ),
        ],
      ),
    );
  }
}