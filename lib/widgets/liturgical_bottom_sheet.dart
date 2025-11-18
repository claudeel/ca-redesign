import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants/colors.dart';
import '../screens/calendar_screen.dart'; // To access _liturgicalData, but better to pass data

class LiturgicalBottomSheet extends StatelessWidget {
  final DateTime selectedDay;
  final VoidCallback onClose;

  const LiturgicalBottomSheet({
    super.key,
    required this.selectedDay,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Fetch data dynamically; for now, assume access or pass from parent
    // Hardcode example, but in real, pass as prop or use provider
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final String formattedDate = DateFormat('EEEE, MMMM d').format(selectedDay);
    // Example data; replace with actual
    const String liturgicalEvent = 'Twenty-first Sunday in Ordinary Time';
    const String saint = 'St. Louis of France';
    const String gospel = 'Jn 6:60-69'; // From data

    return GestureDetector(
      onTap: () {}, // Prevent taps from propagating to overlay
      child: Container(
        decoration: BoxDecoration(
          color: isDark ? AppColors.secondaryDark : AppColors.secondaryLight,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Handle and close button
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 48.0), // Spacer for centering handle
                  Container(
                    width: 36.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: (isDark ? AppColors.textDarkSecondary : AppColors.textLightSecondary).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 24.0),
                    onPressed: onClose,
                  ),
                ],
              ),
            ),
            // Content
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section Header
                  Row(
                    children: [
                      Text(
                        formattedDate,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 24.0),
                      ),
                      const SizedBox(width: 8.0),
                      Container(
                        width: 12.0,
                        height: 12.0,
                        decoration: const BoxDecoration(
                          color: AppColors.greenLiturgical,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  // Liturgical Info
                  Row(
                    children: [
                      const Icon(Icons.church, size: 20.0, color: AppColors.primary),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Text(
                          liturgicalEvent,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      const Icon(Icons.person, size: 20.0, color: AppColors.primary),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Text(
                          saint,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Gospel: $gospel',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16.0),
                  // Links/Buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {}, // TODO: Navigate to readings
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: isDark ? AppColors.borderDark : AppColors.borderLight,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: const Text('Daily Readings'),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {}, // TODO: Navigate to liturgy
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: isDark ? AppColors.borderDark : AppColors.borderLight,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: const Text('Liturgy of the Hours'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  // Personal Notes
                  Text(
                    'Personal Notes',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: (isDark ? AppColors.textDarkSecondary : AppColors.textLightSecondary).withOpacity(0.8),
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    "Reflection on today's Gospel about the narrow gate. A reminder to stay focused on what truly matters and not be distracted by worldly concerns. Prayer intention for Aunt Mary's health.",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: (isDark ? AppColors.textDarkSecondary : AppColors.textLightSecondary).withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}