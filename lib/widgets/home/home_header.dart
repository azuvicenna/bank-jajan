import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:bank_jajan/constants/app_assets.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';

class HomeHeader extends StatelessWidget {
  final String userName;
  final String greeting;
  final VoidCallback? onNotificationTap;

  const HomeHeader({
    super.key,
    required this.userName,
    this.greeting = 'Selamat pagi',
    this.onNotificationTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.avatarBackground,
                child: HeroIcon(
                  AppAssets.user,
                  color: AppColors.iconGrey,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    greeting,
                    style: AppStyles.greeting,
                  ),
                  Text(
                    'Hi, $userName',
                    style: AppStyles.userName,
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.borderGrey),
            ),
            child: IconButton(
              icon: const HeroIcon(
                AppAssets.notification,
                size: 20,
                color: AppColors.iconDark,
              ),
              onPressed: onNotificationTap,
            ),
          ),
        ],
      ),
    );
  }
}
