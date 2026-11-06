import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:bank_jajan/constants/app_assets.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/models/content_model.dart';

class PlanningNoteCard extends StatelessWidget {
  final VoidCallback? onTap;
  final PlanningNoteItem planningNote;

  const PlanningNoteCard({
    super.key,
    this.onTap,
    this.planningNote = StaticData.planningNote,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Buku Catatan',
            style: AppStyles.sectionTitle,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 24,
                        height: 3,
                        color: AppColors.textWhite70,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        planningNote.subtitle,
                        style: AppStyles.planningSubtitle,
                      ),
                      Text(
                        planningNote.title,
                        style: AppStyles.planningTitle,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const HeroIcon(
                    AppAssets.arrowRight,
                    color: AppColors.primary,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
