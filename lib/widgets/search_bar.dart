import 'package:flutter/material.dart';
import '../constants/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search teachings and documents',
          hintStyle: TextStyle(color: AppColors.textLightSecondary),
          prefixIcon: Icon(Icons.search, color: AppColors.textLightSecondary),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(0),
        ),
      ),
    );
  }
}