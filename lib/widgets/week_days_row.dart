import 'package:flutter/material.dart';

class WeekDaysRow extends StatelessWidget {
  const WeekDaysRow({super.key});

  @override
  Widget build(BuildContext context) {
    final days = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
    return GridView.count(
      crossAxisCount: 7,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: days.map((day) => Center(
        child: Text(
          day,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).brightness == Brightness.light
                ? Colors.black.withOpacity(0.6)
                : Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.bold,
          ),
        ),
      )).toList(),
    );
  }
}