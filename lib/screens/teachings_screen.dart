import 'package:flutter/material.dart';
import '../widgets/teachings_header.dart';
import '../widgets/search_bar.dart';
import '../widgets/featured_doctrine_card.dart';
import '../widgets/category_list.dart';

class TeachingsScreen extends StatelessWidget {
  const TeachingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TeachingsHeader(),
          const SizedBox(height: 12.0),
          const SearchBarWidget(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: Text(
              'Featured Doctrine',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const FeaturedDoctrineCard(),
          const SizedBox(height: 16.0),
          const CategoryList(),
          const SizedBox(height: 80.0), // Space for bottom nav
        ],
      ),
    );
  }
}