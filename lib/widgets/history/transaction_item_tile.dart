import 'package:flutter/material.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/models/content_model.dart';

class TransactionItemTile extends StatelessWidget {
  final TransactionItemModel transaction;

  const TransactionItemTile({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    final bool isIncome = transaction.isIncome;
    final Color iconBackgroundColor = isIncome
        ? AppColors.incomeBackground
        : AppColors.expenseBackground;
    final Color iconColor = isIncome
        ? AppColors.successIcon
        : AppColors.textPrimary;
    final TextStyle amountStyle = isIncome
        ? AppStyles.transactionAmountIncome
        : AppStyles.transactionAmountExpense;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: iconBackgroundColor,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.check, size: 20.0, color: iconColor),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  transaction.title,
                  style: AppStyles.transactionTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2.0),
                Text(
                  transaction.date,
                  style: AppStyles.transactionSubtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8.0),
          Text(transaction.formattedAmount, style: amountStyle),
        ],
      ),
    );
  }
}
