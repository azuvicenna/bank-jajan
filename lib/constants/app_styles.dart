import 'package:flutter/material.dart';
import 'package:bank_jajan/constants/app_colors.dart';

abstract class AppStyles {
  // Headings & Titles
  static const TextStyle heading1 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.2,
  );

  static const TextStyle sectionTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // Home Header
  static const TextStyle greeting = TextStyle(
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  static const TextStyle userName = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  // Main Balance Card
  static const TextStyle accountNumber = TextStyle(
    fontSize: 13,
    color: AppColors.textWhite70,
  );

  static const TextStyle balanceLabel = TextStyle(
    fontSize: 12,
    color: AppColors.textWhite70,
  );

  static const TextStyle balanceAmount = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  static const TextStyle linkUnderlineWhite = TextStyle(
    fontSize: 12,
    color: AppColors.textWhite,
    decoration: TextDecoration.underline,
  );

  static const TextStyle actionButtonLabel = TextStyle(
    fontSize: 11,
    color: AppColors.textWhite,
  );

  // Category Menu
  static const TextStyle categoryLabel = TextStyle(
    fontSize: 11,
    color: AppColors.textPrimary,
    height: 1.2,
  );

  // E-Wallet Card
  static const TextStyle cardItemTitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle cardItemSubtitle = TextStyle(
    fontSize: 10,
    color: AppColors.textSecondary,
  );

  static const TextStyle cardItemAction = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  // Planning Note Card
  static const TextStyle planningSubtitle = TextStyle(
    fontSize: 10,
    color: AppColors.textWhite70,
  );

  static const TextStyle planningTitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  // Navigation
  static const TextStyle navItemActive = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static const TextStyle navItemInactive = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );
}
