import 'package:heroicons/heroicons.dart';

abstract class AppAssets {
  static const String imagePath = 'assets/images';

  // Images
  static const String piggyBank = '$imagePath/piggy_bank.png';
  static const String debitCardGreen = '$imagePath/debit_card_green.png';

  // Heroicons - General & Home
  static const HeroIcons user = HeroIcons.user;
  static const HeroIcons notification = HeroIcons.bell;
  static const HeroIcons copy = HeroIcons.square2Stack;
  static const HeroIcons shoppingBag = HeroIcons.shoppingBag;
  static const HeroIcons wallet = HeroIcons.wallet;
  static const HeroIcons transfer = HeroIcons.arrowsRightLeft;
  static const HeroIcons phone = HeroIcons.devicePhoneMobile;
  static const HeroIcons qrCode = HeroIcons.qrCode;
  static const HeroIcons arrowRight = HeroIcons.arrowRight;
  static const HeroIcons photo = HeroIcons.photo;

  // Heroicons - Category Menu
  static const HeroIcons cashInOut = HeroIcons.inboxArrowDown;
  static const HeroIcons donation = HeroIcons.handRaised;
  static const HeroIcons insurance = HeroIcons.shieldCheck;
  static const HeroIcons investment = HeroIcons.arrowTrendingUp;
  static const HeroIcons foreignExchange = HeroIcons.currencyDollar;
  static const HeroIcons loan = HeroIcons.creditCard;
  static const HeroIcons electricity = HeroIcons.bolt;
  static const HeroIcons water = HeroIcons.sparkles;

  // Heroicons - Navigation
  static const HeroIcons navHome = HeroIcons.home;
  static const HeroIcons navHistory = HeroIcons.receiptRefund;
  static const HeroIcons navSaku = HeroIcons.wallet;
  static const HeroIcons navCards = HeroIcons.creditCard;
}

abstract class AppIcons {
  static const HeroIcons user = AppAssets.user;
  static const HeroIcons notification = AppAssets.notification;
  static const HeroIcons copy = AppAssets.copy;
  static const HeroIcons shoppingBag = AppAssets.shoppingBag;
  static const HeroIcons wallet = AppAssets.wallet;
  static const HeroIcons transfer = AppAssets.transfer;
  static const HeroIcons phone = AppAssets.phone;
  static const HeroIcons qrCode = AppAssets.qrCode;
  static const HeroIcons arrowRight = AppAssets.arrowRight;
  static const HeroIcons photo = AppAssets.photo;

  static const HeroIcons cashInOut = AppAssets.cashInOut;
  static const HeroIcons donation = AppAssets.donation;
  static const HeroIcons insurance = AppAssets.insurance;
  static const HeroIcons investment = AppAssets.investment;
  static const HeroIcons foreignExchange = AppAssets.foreignExchange;
  static const HeroIcons loan = AppAssets.loan;
  static const HeroIcons electricity = AppAssets.electricity;
  static const HeroIcons water = AppAssets.water;

  static const HeroIcons navHome = AppAssets.navHome;
  static const HeroIcons navHistory = AppAssets.navHistory;
  static const HeroIcons navSaku = AppAssets.navSaku;
  static const HeroIcons navCards = AppAssets.navCards;
}
