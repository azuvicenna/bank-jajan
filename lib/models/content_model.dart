import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class CategoryMenuItemModel {
  final String id;
  final HeroIcons icon;
  final String label;

  const CategoryMenuItemModel({
    required this.id,
    required this.icon,
    required this.label,
  });
}

class QuickActionItem {
  final String id;
  final HeroIcons icon;
  final String label;

  const QuickActionItem({
    required this.id,
    required this.icon,
    required this.label,
  });
}

class SpotlightItem {
  final String id;
  final HeroIcons icon;
  final String? title;
  final String? imageUrl;

  const SpotlightItem({
    required this.id,
    required this.icon,
    this.title,
    this.imageUrl,
  });
}

class PlanningNoteItem {
  final String id;
  final String title;
  final String subtitle;

  const PlanningNoteItem({
    required this.id,
    required this.title,
    required this.subtitle,
  });
}

class EWalletItem {
  final String id;
  final String name;
  final String balanceOrStatus;
  final bool isConnected;
  final String? phoneNumber;
  final Color? avatarColor;

  const EWalletItem({
    required this.id,
    required this.name,
    required this.balanceOrStatus,
    required this.isConnected,
    this.phoneNumber,
    this.avatarColor,
  });
}
