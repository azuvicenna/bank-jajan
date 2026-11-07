import 'package:flutter/material.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';

class TotalSakuCard extends StatelessWidget {
  final String totalBalance;

  const TotalSakuCard({
    super.key,
    this.totalBalance = StaticData.totalSakuBalance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Total Saldo Saku',
            style: AppStyles.sakuTotalLabel,
          ),
          Text(
            totalBalance,
            style: AppStyles.sakuTotalAmount,
          ),
        ],
      ),
    );
  }
}
