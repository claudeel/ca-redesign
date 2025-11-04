import 'package:flutter/material.dart';
import 'saint_of_the_day.dart';
import 'catechism_daily_card.dart';

class DiscoverSection extends StatelessWidget {
  const DiscoverSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 8.0),
          child: Text(
            'Discover',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: const Column(
            children: [
              SaintOfTheDayCard(),
              SizedBox(height: 16.0),
              CatechismDailyCard(),
            ],
          ),
        ),
      ],
    );
  }
}