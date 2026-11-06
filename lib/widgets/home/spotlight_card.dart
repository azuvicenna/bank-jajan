import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/models/content_model.dart';

class SpotlightCard extends StatelessWidget {
  final List<SpotlightItem> spotlights;

  const SpotlightCard({
    super.key,
    this.spotlights = StaticData.spotlights,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Spotlight',
                style: AppStyles.sectionTitle,
              ),
              Container(width: 24, height: 4, color: AppColors.primary),
            ],
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: spotlights.length,
            itemBuilder: (context, index) {
              final item = spotlights[index];
              return Container(
                width: 260,
                margin: const EdgeInsets.only(right: 12.0),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: HeroIcon(
                    item.icon,
                    color: AppColors.textWhite54,
                    size: 48,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
