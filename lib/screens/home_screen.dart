import 'package:flutter/material.dart';

import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/widgets/common/category_menu_item.dart';
import 'package:bank_jajan/widgets/common/custom_bottom_nav_bar.dart';
import 'package:bank_jajan/widgets/home/ewallet_card.dart';
import 'package:bank_jajan/widgets/home/home_header.dart';
import 'package:bank_jajan/widgets/home/main_balance_card.dart';
import 'package:bank_jajan/widgets/home/planning_note_card.dart';
import 'package:bank_jajan/widgets/home/spotlight_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeHeader(
                userName: StaticData.userName,
                onNotificationTap: () {},
              ),

              MainBalanceCard(
                accountNumber: StaticData.accountNumber,
                balance: StaticData.balance,
                onTapSakuJajan: () {},
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColors.border),
                ),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: StaticData.categoryMenus.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    final menu = StaticData.categoryMenus[index];
                    return CategoryMenuItem(
                      icon: menu.icon,
                      label: menu.label,
                      onTap: () {},
                    );
                  },
                ),
              ),

              const SizedBox(height: 12),

              const EwalletCard(),

              const SizedBox(height: 12),

              const SpotlightCard(),

              const SizedBox(height: 16),

              PlanningNoteCard(onTap: () {}),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),

      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentNavIndex,
        onTap: (index) {
          setState(() {
            _currentNavIndex = index;
          });
        },
        onQrScanTap: () {},
      ),
    );
  }
}
