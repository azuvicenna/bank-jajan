import 'package:flutter/material.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/models/content_model.dart';

class ExtraBungaBanner extends StatelessWidget {
  final ExtraBungaBannerModel banner;
  final VoidCallback onTap;

  const ExtraBungaBanner({
    super.key,
    this.banner = StaticData.extraBungaBanner,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: AppColors.border),
        ),
        child: Row(
          children: [
            banner.imageAsset != null
                ? Image.asset(
                    banner.imageAsset!,
                    width: 38.0,
                    height: 38.0,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.savings_outlined,
                      size: 38.0,
                      color: AppColors.textPrimary,
                    ),
                  )
                : const Icon(
                    Icons.savings_outlined,
                    size: 38.0,
                    color: AppColors.textPrimary,
                  ),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    banner.title,
                    style: AppStyles.extraBungaTitle,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    banner.subtitle,
                    style: AppStyles.extraBungaSubtitle,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  banner.scheduleInfo,
                  style: AppStyles.extraBungaSchedule,
                ),
                const SizedBox(height: 4.0),
                Text(
                  banner.interestRate,
                  style: AppStyles.extraBungaRate,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
