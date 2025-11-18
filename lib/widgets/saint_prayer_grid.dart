import 'package:flutter/material.dart';
import '../constants/colors.dart';

class SaintPrayerGrid extends StatelessWidget {
  const SaintPrayerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(child: SaintCard()),
          const SizedBox(width: 16.0),
          Expanded(child: PrayerCard()),
        ],
      ),
    );
  }
}

class SaintCard extends StatelessWidget {
  const SaintCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 0,
      shadowColor: Colors.black.withOpacity(0.05),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuBXRGXIO-seURepzmjxJjNC90749_LjoCgRKNLLFgHeARmau0EJUw_EM-R1Jxu1eBSw-W0oZp3AAVpvODrCYvBUX0ygXrPBlYAS9hLSQxp-OqW5pYFaQdOKpuNle1-KFMKN54LvRnHRORUnwThbFYqTXe0MwHRcbmt0Qr4TRViFUSeCwbLYVrJL-Gais76Kya8nj4JDmq592F5twj5VLqYGCEqeoom-DSC3pmWT7ov1EQcJZbxhvpTZ1TFKtWjlvSTsAf6bfEv5xi0',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Saint of the Day',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 16.0),
            ),
            const Text(
              'St. Jude',
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}

class PrayerCard extends StatelessWidget {
  const PrayerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 0,
      shadowColor: Colors.black.withOpacity(0.05),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Icon(Icons.health_and_safety, color: AppColors.primary, size: 32.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'A Quick Prayer',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 16.0),
            ),
            const Text(
              'The Morning Offering',
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}