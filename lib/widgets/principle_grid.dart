import 'package:flutter/material.dart';
import '../screens/category_detail_screen.dart';
import 'principle_card.dart';

class PrincipleGrid extends StatelessWidget {
  final List<PrincipleItem> items;

  const PrincipleGrid({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.8,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return PrincipleCard(
            imageUrl: item.imageUrl,
            label: item.label,
            title: item.title,
          );
        },
      ),
    );
  }
}