import 'package:flutter/material.dart';

import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/screens/history_screen.dart';
import 'package:bank_jajan/screens/home_screen.dart';
import 'package:bank_jajan/screens/saku_screen.dart';
import 'package:bank_jajan/widgets/cards/debit_card_tile.dart';
import 'package:bank_jajan/widgets/common/custom_bottom_nav_bar.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

typedef CardScreen = CardsScreen;

class _CardsScreenState extends State<CardsScreen> {
  int _currentNavIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Kartu Debit Saya',
          style: AppStyles.cardsHeaderTitle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(50.0),
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.borderGrey),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.textPrimary,
                    size: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: StaticData.debitCards.length,
        itemBuilder: (context, index) {
          final card = StaticData.debitCards[index];
          return DebitCardTile(
            card: card,
            onDetailTap: () {},
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentNavIndex,
        onTap: (index) {
          if (index == _currentNavIndex) return;

          setState(() {
            _currentNavIndex = index;
          });

          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HistoryScreen()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SakuScreen()),
            );
          }
        },
        onQrScanTap: () {},
      ),
    );
  }
}
