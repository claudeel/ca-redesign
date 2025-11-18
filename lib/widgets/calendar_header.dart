import 'package:flutter/material.dart';
import 'package:intl/intl.dart';  // For formatting month/year

class CalendarHeader extends StatelessWidget {
  final DateTime focusedDay;
  final VoidCallback onPrevious;
  final VoidCallback onNext;

  const CalendarHeader({
    super.key,
    required this.focusedDay,
    required this.onPrevious,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final String monthYear = DateFormat('MMMM yyyy').format(focusedDay);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left, size: 24.0),
            onPressed: onPrevious,
          ),
          Expanded(
            child: Center(
              child: Text(
                monthYear,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 28.0),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right, size: 24.0),
            onPressed: onNext,
          ),
        ],
      ),
    );
  }
}