import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/colors.dart';

class MassReadingsCard extends StatelessWidget {
  const MassReadingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 12.0,
              offset: const Offset(0, 4),
            ),
          ],
          image: const DecorationImage(
            image: NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuC8aFFSC-CNsxoIox34bYYbpSGDCDtxnaC5vE6Chq6zJgs7Ni0zcqmsaPZU8N96-HWkcwHypOqkBnJQOa6aBbxjQdcupfivS2yx4frsITTrA-9PlyNHxPhFY-fnNz1ezw_pH0fXYhGCxB035VIGDa0IIlBRf8HvK17GzVUVY-TYbEkywQe1nB45SZsOOcg0ZyBy2m5S5DsQHP1acHE5HZzo4i60DzvpYQkihWi-Sho6zqUCVuOgKnuKa-Ox-lFN0QvEGrdDDvf-MpI',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black.withOpacity(0.5), Colors.transparent],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today's Mass Readings",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Reading I: Romans 8:18-25',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final today = DateTime.now();
                    context.push('/calendar/readings?date=${today.toIso8601String()}');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999.0)),
                  ),
                  child: const Text('Read Now'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}