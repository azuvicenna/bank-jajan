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

class TransactionItemModel {
  final String id;
  final String title;
  final String date;
  final String formattedAmount;
  final bool isIncome;

  const TransactionItemModel({
    required this.id,
    required this.title,
    required this.date,
    required this.formattedAmount,
    required this.isIncome,
  });
}

class TransactionGroupModel {
  final String monthYear;
  final List<TransactionItemModel> transactions;

  const TransactionGroupModel({
    required this.monthYear,
    required this.transactions,
  });
}

class FilterOptionModel {
  final int days;
  final String label;

  const FilterOptionModel({required this.days, required this.label});
}

class SakuItemModel {
  final String id;
  final bool isAddButton;
  final String? title;
  final String? amount;
  final String? emoji;
  final Color? backgroundColor;

  const SakuItemModel({
    required this.id,
    this.isAddButton = false,
    this.title,
    this.amount,
    this.emoji,
    this.backgroundColor,
  });
}

class DepositoItemModel {
  final String id;
  final String interestRate;
  final String duration;

  const DepositoItemModel({
    required this.id,
    required this.interestRate,
    required this.duration,
  });
}

class ExtraBungaBannerModel {
  final String id;
  final String title;
  final String subtitle;
  final String scheduleInfo;
  final String interestRate;
  final String? imageAsset;

  const ExtraBungaBannerModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.scheduleInfo,
    required this.interestRate,
    this.imageAsset,
  });
}
