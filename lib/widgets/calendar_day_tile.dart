import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CalendarDayTile extends StatelessWidget {
  final int day;
  final Color color;
  final bool isSelected;

  const CalendarDayTile({
    super.key,
    required this.day,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {}, // TODO: Select day
      style: TextButton.styleFrom(padding: const EdgeInsets.all(4.0)),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            Text(
              '$day',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isSelected ? Colors.white : null,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
                if (isSelected) ...[
                  const SizedBox(width: 4.0),
                  Container(
                    width: 6.0,
                    height: 6.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}