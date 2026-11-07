import 'package:flutter/material.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';

class HistoryHeader extends StatelessWidget {
  final String title;
  final Widget? bottomCard;

  const HistoryHeader({
    super.key,
    this.title = 'Riwayat Transaksi',
    this.bottomCard,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 140.0,
          width: double.infinity,
          color: AppColors.primary,
        ),
        Column(
          children: [
            const SizedBox(height: 20.0),
            Text(
              title,
              style: AppStyles.historyHeaderTitle,
            ),
            if (bottomCard != null) ...[
              const SizedBox(height: 24.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: bottomCard!,
              ),
            ],
          ],
        ),
      ],
    );
  }
}
