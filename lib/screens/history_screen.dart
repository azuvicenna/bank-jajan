import 'package:flutter/material.dart';

import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/constants/app_styles.dart';
import 'package:bank_jajan/data/static_data.dart';
import 'package:bank_jajan/screens/home_screen.dart';
import 'package:bank_jajan/widgets/common/custom_bottom_nav_bar.dart';
import 'package:bank_jajan/widgets/history/history_header.dart';
import 'package:bank_jajan/widgets/history/transaction_filter_card.dart';
import 'package:bank_jajan/widgets/history/transaction_item_tile.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int _currentNavIndex = 1;

  int _selectedDays = 7;
  String? _startDate;
  String? _endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HistoryHeader(
                bottomCard: TransactionFilterCard(
                  selectedDays: _selectedDays,
                  startDateText: _startDate,
                  endDateText: _endDate,
                  onDaysChanged: (int days) {
                    setState(() {
                      _selectedDays = days;
                    });
                  },
                  onStartDateTap: () {},
                  onEndDateTap: () {},
                ),
              ),

              const SizedBox(height: 24.0),

              ...StaticData.transactionHistory.map((group) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        group.monthYear,
                        style: AppStyles.sectionTitle,
                      ),
                    ),
                    ...group.transactions.map((trx) {
                      return TransactionItemTile(
                        transaction: trx,
                      );
                    }),
                    const SizedBox(height: 16.0),
                  ],
                );
              }),

              const SizedBox(height: 32.0),
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
          }
        },
        onQrScanTap: () {},
      ),
    );
  }
}
