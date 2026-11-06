import 'package:flutter/material.dart';

abstract class AppColors {
  // Brand colors
  static const Color primary = Color(0xFF0F7D42);
  static const Color primaryDark = Color(0xFF13854E);
  static const Color accent = Color(0xFF00E676);

  // Background colors
  static const Color background = Color(0xFFF3F3F5);
  static const Color scaffoldBackground = Color(0xFFF3F3F5);
  static const Color cardBackground = Colors.white;
  static const Color white = Colors.white;
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color avatarBackground = Color(0xFFE0E0E0);

  // Border & Line colors
  static const Color border = Color(0xFFEEEEEE);
  static const Color borderGrey = Color(0xFFE0E0E0);

  // Text colors
  static const Color textPrimary = Color(0xDD000000);
  static const Color textSecondary = Colors.grey;
  static const Color textWhite = Colors.white;
  static const Color textWhite70 = Colors.white70;
  static const Color textWhite54 = Colors.white54;

  // Icon & Indicator colors
  static const Color iconGrey = Colors.grey;
  static const Color iconDark = Color(0xDD000000);
  static const Color walletBlue = Colors.blue;
  static const Color walletCyan = Colors.cyan;
}
