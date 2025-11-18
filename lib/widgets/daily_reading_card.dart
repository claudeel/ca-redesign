import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DailyReadingCard extends StatelessWidget {
  const DailyReadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)),
        elevation: 4.0,
        child: Column(
          children: [
            Container(
              height: 150.0, // Aspect ratio approx 2.5/1
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuA7a3dO4yYHhsM3QBvbJu6xaEXju1cU5zDiNlwAeRR2Olb7LP5XY_jBtpk-NwbKGHTx6ixI_0urAttV5NqN4QG4tQ6tbBkIYyeUR48mmXXmW0qCd7YVCoRDTdlPovsMSF8fl9f67mDCu-RGQxNH3UNpiedcvDj8IKXE6e-3pSUAWI7POy4lx6RINrF6NqoFw4DHQ-ves65AgcWiY4B6UGq4mXx_hYa1F32zfI4jNF_mO4ymaCb1JgjOxdDqvjPF_CLiUfpd3fQovbOf',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Tap to read the full text for today's mass and reflect.",
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyMedium,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final today = DateTime.now();
                    context.push(
                        '/calendar/readings?date=${today.toIso8601String()}');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme
                        .of(context)
                        .primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                  child: const Text('Read Now'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}