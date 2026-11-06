import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:bank_jajan/constants/app_assets.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/models/content_model.dart';

class MainBalanceCard extends StatelessWidget {
  final String accountNumber;
  final String balance;
  final VoidCallback? onTapSakuJajan;
  final List<QuickActionItem> actionItems;

  const MainBalanceCard({
    super.key,
    required this.accountNumber,
    required this.balance,
    this.onTapSakuJajan,
    this.actionItems = StaticData.balanceActions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                accountNumber,
                style: AppStyles.accountNumber,
              ),
              const SizedBox(width: 4),
              const HeroIcon(
                AppAssets.copy,
                size: 14,
                color: AppColors.textWhite70,
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Saldo',
            style: AppStyles.balanceLabel,
          ),
          Text(
            balance,
            style: AppStyles.balanceAmount,
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: onTapSakuJajan,
            child: const Row(
              children: [
                Text(
                  'Lihat Semua Saku Jajan',
                  style: AppStyles.linkUnderlineWhite,
                ),
                SizedBox(width: 4),
                HeroIcon(
                  AppAssets.shoppingBag,
                  size: 14,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: actionItems
                .map((action) => _buildActionButton(action.icon, action.label))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(HeroIcons icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: AppColors.accent,
            shape: BoxShape.circle,
          ),
          child: HeroIcon(icon, color: AppColors.white, size: 22),
        ),
        const SizedBox(height: 6),
        Text(label, style: AppStyles.actionButtonLabel),
      ],
    );
  }
}
