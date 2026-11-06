import 'package:flutter/material.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/models/content_model.dart';

class EwalletCard extends StatelessWidget {
  final List<EWalletItem> eWallets;

  const EwalletCard({
    super.key,
    this.eWallets = StaticData.eWallets,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'E-Wallet Terhubung',
                style: AppStyles.sectionTitle,
              ),
              Container(width: 24, height: 4, color: AppColors.primary),
            ],
          ),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: eWallets.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: item.isConnected
                      ? _buildConnectedItem(
                          item.balanceOrStatus,
                          item.phoneNumber ?? '0859****7156',
                          item.avatarColor ?? AppColors.walletBlue,
                        )
                      : _buildConnectAction(
                          item.name,
                          item.balanceOrStatus,
                          item.avatarColor ?? AppColors.walletCyan,
                        ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConnectedItem(String amount, String phone, Color avatarColor) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(radius: 12, backgroundColor: avatarColor),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                amount,
                style: AppStyles.cardItemTitle,
              ),
              Text(
                phone,
                style: AppStyles.cardItemSubtitle,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildConnectAction(
    String providerName,
    String actionText,
    Color avatarColor,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(radius: 12, backgroundColor: avatarColor),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                providerName,
                style: AppStyles.cardItemTitle,
              ),
              Text(
                actionText,
                style: AppStyles.cardItemAction,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
