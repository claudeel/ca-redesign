import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/colors.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'icon': Icons.health_and_safety, 'title': 'Core Doctrines', 'subtitle': 'Explore the fundamental beliefs of the faith.', 'route': null},
      {'icon': Icons.church, 'title': 'Sacraments & Liturgy', 'subtitle': 'Understand the sacred signs and rituals.', 'route': null},
      {'icon': Icons.book, 'title': 'Church Documents', 'subtitle': 'Read Encyclicals and Apostolic Exhortations.', 'route': null},
      {'icon': Icons.groups, 'title': 'Catholic Social Teaching', 'subtitle': 'Principles for a just society.', 'route': '/teachings/social'},
      {'icon': Icons.psychology, 'title': 'Saints & Doctors', 'subtitle': 'Learn from the great theologians of the Church.', 'route': null},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: categories.map((cat) => CategoryItem(
          icon: cat['icon'] as IconData,
          title: cat['title'] as String,
          subtitle: cat['subtitle'] as String,
          route: cat['route'] as String?,
        )).toList(),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String? route;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 1.0,
      margin: const EdgeInsets.only(bottom: 12.0),
      child: InkWell(
        onTap: route != null ? () => context.push(route!) : null, // Navigate if route provided
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Icon(icon, color: AppColors.primary),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: AppColors.textLightSecondary),
            ],
          ),
        ),
      ),
    );
  }
}