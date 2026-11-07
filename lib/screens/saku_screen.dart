import 'package:flutter/material.dart';

import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/screens/history_screen.dart';
import 'package:bank_jajan/screens/home_screen.dart';
import 'package:bank_jajan/screens/cards_screen.dart';
import 'package:bank_jajan/widgets/common/custom_bottom_nav_bar.dart';
import 'package:bank_jajan/widgets/saku/deposito_card.dart';
import 'package:bank_jajan/widgets/saku/extra_bunga_banner.dart';
import 'package:bank_jajan/widgets/saku/saku_grid_item.dart';
import 'package:bank_jajan/widgets/saku/total_saku_card.dart';

class SakuScreen extends StatefulWidget {
  const SakuScreen({super.key});

  @override
  State<SakuScreen> createState() => _SakuScreenState();
}

class _SakuScreenState extends State<SakuScreen> {
  int _currentNavIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Buat Saku Jajan',
                  style: AppStyles.sakuHeaderTitle,
                ),
              ),
              const SizedBox(height: 24.0),

              const TotalSakuCard(),
              const SizedBox(height: 24.0),

              const Text(
                'Saku Saya',
                style: AppStyles.sectionTitle,
              ),
              const SizedBox(height: 12.0),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: StaticData.sakuItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  childAspectRatio: 1.15,
                ),
                itemBuilder: (context, index) {
                  final item = StaticData.sakuItems[index];
                  return SakuGridItem(
                    item: item,
                    onTap: () {},
                  );
                },
              ),
              const SizedBox(height: 24.0),

              const Text(
                'Bikin Untung',
                style: AppStyles.sectionTitle,
              ),
              const SizedBox(height: 12.0),

              DepositoCard(
                onBukaSekarangTap: (item) {},
              ),
              const SizedBox(height: 12.0),

              ExtraBungaBanner(
                onTap: () {},
              ),

              const SizedBox(height: 24.0),
            ],
          ),
        ),
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
          } else if (index == 3) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CardsScreen()),
            );
          }
        },
        onQrScanTap: () {},
      ),
    );
  }
}
