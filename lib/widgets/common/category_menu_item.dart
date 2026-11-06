import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';

class CategoryMenuItem extends StatelessWidget {
  final HeroIcons icon;
  final String label;
  final VoidCallback? onTap;

  const CategoryMenuItem({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: HeroIcon(
                icon,
                color: AppColors.white,
                size: 24,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.categoryLabel,
          ),
        ],
      ),
    );
  }
}
