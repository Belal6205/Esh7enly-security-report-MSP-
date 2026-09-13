import 'package:flutter/material.dart';

/// Centralized color palette for the Esh7enly app.
/// All colors used across the app should be referenced from here.
abstract class AppColors {
  // ─── Brand Colors ───────────────────────────────────────────────
  static const Color primaryGreen = Color(0xFF00E676);
  static const Color primaryBlue = Color(0xFF12355B);
  static const Color accentYellow = Color(0xFFE8F51E);

  // ─── Background Gradient Colors ─────────────────────────────────
  static const Color gradientTop = Color(0xFFD7FFFF);
  static const Color gradientMiddle = Color(0xFF7F9FB5);
  static const Color gradientBottom = Color(0xFF334B6A);

  static const Color headerBgForLoginAndSignUp = Color(0xFFAFDCE9);

  // ─── Text Colors ────────────────────────────────────────────────
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textGrey = Color(0xFFB0BEC5);
  static const Color textDark = Color(0xFF1A1A2E);

  // ─── Surface Colors ────────────────────────────────────────────
  static const Color surface = Color(0xFF1E1E2E);
  static const Color surfaceLight = Color(0xFF2A2A3E);

  // ─── Button Colors ─────────────────────────────────────────────
  static const Color buttonPrimary = Color(0xFFE8F51E);
  static const Color buttonText = Color(0xFF1A1A2E);

  // ─── Select Car Screen Colors ──────────────────────────────────
  static const Color backgroundWhite = Color(0xFFF8F9FA);
  static const Color darkBluePrimary = Color(0xFF0D1B2A);
  static const Color lightBlueIconBg = Color(0xFFE8EEF2);
  static const Color progressYellow = Color(0xFFD4E157);
  static const Color progressGreen = Color(0xFF00695C);
  static const Color progressGrey = Color(0xFFE0E0E0);
  static const Color textDarkBlue = Color(0xFF1A237E);
  static const Color cardGradientStart = Color(0xFFE0F2F1);
  static const Color cardGradientEnd = Color(0xFFB2DFDB);
}
