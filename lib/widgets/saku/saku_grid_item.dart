import 'package:flutter/material.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/models/content_model.dart';

class SakuGridItem extends StatelessWidget {
  final SakuItemModel item;
  final VoidCallback onTap;

  const SakuGridItem({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: item.isAddButton ? AppColors.cardBackground : item.backgroundColor,
          borderRadius: BorderRadius.circular(8.0),
          border: item.isAddButton
              ? Border.all(color: AppColors.primary, width: 1.5)
              : null,
        ),
        child: item.isAddButton ? _buildAddContent() : _buildSakuContent(),
      ),
    );
  }

  Widget _buildAddContent() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add, color: AppColors.primary, size: 28.0),
        SizedBox(height: 8.0),
        Text(
          'Tambah Baru',
          style: AppStyles.sakuAddButtonLabel,
        ),
      ],
    );
  }

  Widget _buildSakuContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(item.emoji ?? '', style: const TextStyle(fontSize: 24.0)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              item.title ?? '',
              style: AppStyles.sakuItemTitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2.0),
            Text(
              item.amount ?? '',
              style: AppStyles.sakuItemAmount,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}
