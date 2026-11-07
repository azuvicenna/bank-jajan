import 'package:flutter/material.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/models/content_model.dart';

class DebitCardTile extends StatelessWidget {
  final DebitCardItemModel card;
  final VoidCallback? onDetailTap;

  const DebitCardTile({
    super.key,
    required this.card,
    this.onDetailTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Kartu Debit: ${card.cardNumberSummary}',
                style: AppStyles.cardTileTitle,
              ),
              Container(
                width: 24.0,
                height: 16.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  border: Border.all(color: AppColors.borderGrey),
                ),
                child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.red)),
                    Expanded(child: Container(color: AppColors.white)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    card.assetPath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 90.0,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [AppColors.primary, AppColors.primaryDark],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.credit_card,
                              color: AppColors.textWhite70,
                              size: 18.0,
                            ),
                          ),
                          Text(
                            card.cardNumberSummary,
                            style: const TextStyle(
                              color: AppColors.textWhite,
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pemilik Kartu',
                      style: AppStyles.cardFieldLabel,
                    ),
                    Text(
                      card.cardHolderName,
                      style: AppStyles.cardHolderValue,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12.0),
                    const Text(
                      'Saldo',
                      style: AppStyles.cardFieldLabel,
                    ),
                    Text(
                      card.balance,
                      style: AppStyles.cardBalanceValue,
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: double.infinity,
                      height: 32.0,
                      child: ElevatedButton(
                        onPressed: onDetailTap,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Lihat Detail Kartu',
                          style: AppStyles.cardDetailButtonLabel,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
