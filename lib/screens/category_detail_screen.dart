import 'package:flutter/material.dart';
import '../widgets/category_detail_header.dart';
import '../widgets/principle_grid.dart';

class CategoryDetailScreen extends StatelessWidget {
  final String title;
  final String backgroundImageUrl;
  final List<PrincipleItem> items;

  const CategoryDetailScreen({
    super.key,
    required this.title,
    required this.backgroundImageUrl,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryDetailHeader(
            title: title,
            backgroundImageUrl: backgroundImageUrl,
          ),
          PrincipleGrid(items: items),
          const SizedBox(height: 80.0), // Space for bottom nav
        ],
      ),
    );
  }
}

class PrincipleItem {
  final String imageUrl;
  final String label;
  final String title;

  const PrincipleItem({
    required this.imageUrl,
    required this.label,
    required this.title,
  });
}