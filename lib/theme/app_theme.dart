import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    cardColor: AppColors.cardLight,
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.lora(fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.textLightPrimary),
      headlineMedium: GoogleFonts.lora(fontSize: 24.0, fontWeight: FontWeight.bold, color: AppColors.textLightPrimary),
      headlineSmall: GoogleFonts.lora(fontSize: 22.0, fontWeight: FontWeight.bold, color: AppColors.textLightPrimary),
      titleLarge: GoogleFonts.lora(fontSize: 20.0, fontWeight: FontWeight.bold, color: AppColors.textLightPrimary),
      titleMedium: GoogleFonts.lora(fontSize: 20.0, fontWeight: FontWeight.bold, color: AppColors.textLightPrimary),
      titleSmall: GoogleFonts.lora(fontSize: 14.0, fontWeight: FontWeight.bold, color: AppColors.textLightPrimary),
      bodyLarge: GoogleFonts.nunitoSans(fontSize: 16.0, color: AppColors.textLightPrimary),
      bodyMedium: GoogleFonts.nunitoSans(fontSize: 14.0, color: AppColors.textLightSecondary),
      labelMedium: GoogleFonts.nunitoSans(fontSize: 12.0, color: AppColors.textLightSecondary),
      labelSmall: GoogleFonts.nunitoSans(fontSize: 10.0, color: AppColors.textLightSecondary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(foregroundColor: AppColors.backgroundDark),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    cardColor: AppColors.cardDark,
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.lora(fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.textDarkPrimary),
      headlineMedium: GoogleFonts.lora(fontSize: 24.0, fontWeight: FontWeight.bold, color: AppColors.textDarkPrimary),
      headlineSmall: GoogleFonts.lora(fontSize: 22.0, fontWeight: FontWeight.bold, color: AppColors.textDarkPrimary),
      titleLarge: GoogleFonts.lora(fontSize: 20.0, fontWeight: FontWeight.bold, color: AppColors.textDarkPrimary),
      titleMedium: GoogleFonts.lora(fontSize: 20.0, fontWeight: FontWeight.bold, color: AppColors.textDarkPrimary),
      titleSmall: GoogleFonts.lora(fontSize: 14.0, fontWeight: FontWeight.bold, color: AppColors.textDarkPrimary),
      bodyLarge: GoogleFonts.nunitoSans(fontSize: 16.0, color: AppColors.textDarkPrimary),
      bodyMedium: GoogleFonts.nunitoSans(fontSize: 14.0, color: AppColors.textDarkSecondary),
      labelMedium: GoogleFonts.nunitoSans(fontSize: 12.0, color: AppColors.textDarkSecondary),
      labelSmall: GoogleFonts.nunitoSans(fontSize: 10.0, color: AppColors.textDarkSecondary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(foregroundColor: AppColors.backgroundDark),
    ),
  );
}