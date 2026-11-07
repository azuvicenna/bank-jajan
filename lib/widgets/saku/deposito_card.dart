import 'package:flutter/material.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/models/content_model.dart';

class DepositoCard extends StatelessWidget {
  final List<DepositoItemModel> items;
  final ValueChanged<DepositoItemModel> onBukaSekarangTap;

  const DepositoCard({
    super.key,
    this.items = StaticData.depositoItems,
    required this.onBukaSekarangTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Deposito',
            style: AppStyles.sectionTitle,
          ),
          const SizedBox(height: 16.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: items.map((item) => _buildDepositoItem(item)).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDepositoItem(DepositoItemModel item) {
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      padding: const EdgeInsets.all(12.0),
      width: 140.0,
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColors.primary),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.interestRate,
            style: AppStyles.depositoRate,
          ),
          const SizedBox(height: 4.0),
          Text(
            item.duration,
            style: AppStyles.depositoDuration,
          ),
          const SizedBox(height: 12.0),
          SizedBox(
            width: double.infinity,
            height: 26.0,
            child: ElevatedButton(
              onPressed: () => onBukaSekarangTap(item),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Buka Sekarang',
                style: AppStyles.depositoButtonLabel,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
