import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CategoryDetailHeader extends StatelessWidget {
  final String title;
  final String backgroundImageUrl;

  const CategoryDetailHeader({
    super.key,
    required this.title,
    required this.backgroundImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Container(
          height: 256.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(backgroundImageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Gradient overlay
        Container(
          height: 256.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black.withOpacity(0.2), AppColors.backgroundLight],
            ),
          ),
        ),
        // Top buttons
        Positioned(
          top: 16.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                style: IconButton.styleFrom(backgroundColor: Colors.black.withOpacity(0.2)),
                onPressed: () {
                  Navigator.pop(context); // Navigate back
                },
              ),
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                style: IconButton.styleFrom(backgroundColor: Colors.black.withOpacity(0.2)),
                onPressed: () {}, // TODO: Implement search
              ),
            ],
          ),
        ),
        // Title
        Positioned(
          bottom: 16.0,
          left: 16.0,
          right: 16.0,
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Lora',
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [Shadow(blurRadius: 2.0, color: Colors.black45)],
            ),
          ),
        ),
      ],
    );
  }
}