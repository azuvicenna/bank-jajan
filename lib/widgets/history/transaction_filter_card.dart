import 'package:flutter/material.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/models/content_model.dart';

class TransactionFilterCard extends StatelessWidget {
  final int? selectedDays;
  final String? startDateText;
  final String? endDateText;
  final ValueChanged<int> onDaysChanged;
  final VoidCallback onStartDateTap;
  final VoidCallback onEndDateTap;
  final List<FilterOptionModel> filterOptions;

  const TransactionFilterCard({
    super.key,
    required this.selectedDays,
    required this.startDateText,
    required this.endDateText,
    required this.onDaysChanged,
    required this.onStartDateTap,
    required this.onEndDateTap,
    this.filterOptions = StaticData.historyFilterDays,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Filter Transaksi', style: AppStyles.filterHeading),
          const SizedBox(height: 12.0),
          RadioGroup<int>(
            groupValue: selectedDays,
            onChanged: (int? newValue) {
              if (newValue != null) {
                onDaysChanged(newValue);
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: filterOptions
                  .map((opt) => _buildRadioOption(opt.days, opt.label))
                  .toList(),
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Berdasarkan Rentang Waktu',
            style: AppStyles.filterHeading,
          ),
          const SizedBox(height: 12.0),
          Row(
            children: [
              Expanded(
                child: _buildDatePickerField(
                  label: 'Mulai Dari',
                  placeholder: 'Pilih tanggal mulai',
                  value: startDateText,
                  onTap: onStartDateTap,
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: _buildDatePickerField(
                  label: 'Sampai',
                  placeholder: 'Pilih tanggal selesai',
                  value: endDateText,
                  onTap: onEndDateTap,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRadioOption(int value, String title) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Radio<int>(
            value: value,
            activeColor: AppColors.primary,
          ),
        ),
        const SizedBox(width: 4.0),
        Text(title, style: AppStyles.filterOption),
      ],
    );
  }

  Widget _buildDatePickerField({
    required String label,
    required String placeholder,
    required String? value,
    required VoidCallback onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppStyles.dateLabel),
        const SizedBox(height: 6.0),
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderGrey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_today_outlined,
                  size: 16.0,
                  color: AppColors.iconGrey,
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    value ?? placeholder,
                    style: value != null
                        ? AppStyles.dateText
                        : AppStyles.datePlaceholder,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
