import 'package:bank_jajan/constants/app_assets.dart';
import 'package:bank_jajan/constants/app_colors.dart';
import 'package:bank_jajan/models/content_model.dart';

abstract class StaticData {
  // User profile & account info
  static const String userName = 'Atyla Azfa Al Harits';
  static const String accountNumber = '008812123773001';
  static const String balance = 'Rp 1.000.000';

  // Home category menus
  static const List<CategoryMenuItemModel> categoryMenus = [
    CategoryMenuItemModel(
      id: 'cat_1',
      icon: AppAssets.cashInOut,
      label: 'Setor & Tarik\nTunai',
    ),
    CategoryMenuItemModel(
      id: 'cat_2',
      icon: AppAssets.donation,
      label: 'Donasi',
    ),
    CategoryMenuItemModel(
      id: 'cat_3',
      icon: AppAssets.insurance,
      label: 'Asuransi',
    ),
    CategoryMenuItemModel(
      id: 'cat_4',
      icon: AppAssets.investment,
      label: 'Investasi',
    ),
    CategoryMenuItemModel(
      id: 'cat_5',
      icon: AppAssets.foreignExchange,
      label: 'Valuta Asing',
    ),
    CategoryMenuItemModel(id: 'cat_6', icon: AppAssets.loan, label: 'Pinjaman'),
    CategoryMenuItemModel(
      id: 'cat_7',
      icon: AppAssets.electricity,
      label: 'Listrik',
    ),
    CategoryMenuItemModel(id: 'cat_8', icon: AppAssets.water, label: 'PDAM'),
  ];

  // Main balance action buttons
  static const List<QuickActionItem> balanceActions = [
    QuickActionItem(
      id: 'action_ewallet',
      icon: AppAssets.wallet,
      label: 'E-Wallet',
    ),
    QuickActionItem(
      id: 'action_transfer',
      icon: AppAssets.transfer,
      label: 'Transfer',
    ),
    QuickActionItem(
      id: 'action_pulsa',
      icon: AppAssets.phone,
      label: 'Pulsa & Data',
    ),
    QuickActionItem(id: 'action_va', icon: AppAssets.qrCode, label: 'VA'),
  ];

  // Connected & Available E-Wallets
  static const List<EWalletItem> eWallets = [
    EWalletItem(
      id: 'ew_1',
      name: 'E-Wallet',
      balanceOrStatus: 'Rp 100.000',
      isConnected: true,
      phoneNumber: '0859****7156',
      avatarColor: AppColors.walletBlue,
    ),
    EWalletItem(
      id: 'ew_2',
      name: 'GoPay',
      balanceOrStatus: 'Hubungkan',
      isConnected: false,
      avatarColor: AppColors.walletCyan,
    ),
    EWalletItem(
      id: 'ew_3',
      name: 'OVO',
      balanceOrStatus: 'Hubungkan',
      isConnected: false,
      avatarColor: AppColors.walletCyan,
    ),
  ];

  // Planning note card data
  static const PlanningNoteItem planningNote = PlanningNoteItem(
    id: 'plan_1',
    title: 'Ayo catat planning belanja kamu sebelum lupa',
    subtitle: 'Buat catatan jajan kamu',
  );

  // Spotlight banner cards
  static const List<SpotlightItem> spotlights = [
    SpotlightItem(id: 'spot_1', icon: AppAssets.photo),
    SpotlightItem(id: 'spot_2', icon: AppAssets.photo),
    SpotlightItem(id: 'spot_3', icon: AppAssets.photo),
  ];

  // Transaction History Dummy Data
  static const List<TransactionGroupModel> transactionHistory = [
    TransactionGroupModel(
      monthYear: 'Oktober 2026',
      transactions: [
        TransactionItemModel(
          id: 'trx_1',
          title: 'ATYLA AZFA AL HARITS',
          date: '05 Okt, 17.19 WIB',
          formattedAmount: '+Rp 70.000,00',
          isIncome: true,
        ),
        TransactionItemModel(
          id: 'trx_2',
          title: 'My Telkomsel Apps',
          date: '05 Okt, 17.19 WIB',
          formattedAmount: '-Rp 70.000,00',
          isIncome: false,
        ),
      ],
    ),
    TransactionGroupModel(
      monthYear: 'September 2026',
      transactions: [
        TransactionItemModel(
          id: 'trx_3',
          title: 'ATYLA AZFA AL HARITS',
          date: '05 Sep, 17.19 WIB',
          formattedAmount: '+Rp 70.000,00',
          isIncome: true,
        ),
        TransactionItemModel(
          id: 'trx_4',
          title: 'My Telkomsel Apps',
          date: '05 Sep, 17.19 WIB',
          formattedAmount: '-Rp 70.000,00',
          isIncome: false,
        ),
      ],
    ),
  ];

  // History Filter Days Options
  static const List<FilterOptionModel> historyFilterDays = [
    FilterOptionModel(days: 7, label: '7 Hari Terakhir'),
    FilterOptionModel(days: 14, label: '14 Hari Terakhir'),
    FilterOptionModel(days: 30, label: '30 Hari Terakhir'),
  ];

  // Saku Screen Data
  static const String totalSakuBalance = 'Rp 11.000.000';

  static const List<SakuItemModel> sakuItems = [
    SakuItemModel(id: 'saku_add', isAddButton: true),
    SakuItemModel(
      id: 'saku_1',
      title: 'Ibadah Haji',
      amount: 'Rp 5.000.000',
      emoji: '🕋',
      backgroundColor: AppColors.sakuHajiBg,
    ),
    SakuItemModel(
      id: 'saku_2',
      title: 'Tabungan Hari Tua',
      amount: 'Rp 1.000.000',
      emoji: '👴',
      backgroundColor: AppColors.sakuTuaBg,
    ),
    SakuItemModel(
      id: 'saku_3',
      title: 'Kesehatan',
      amount: 'Rp 3.000.000',
      emoji: '🏥',
      backgroundColor: AppColors.sakuKesehatanBg,
    ),
    SakuItemModel(
      id: 'saku_4',
      title: 'Tabungan Darurat',
      amount: 'Rp 2.000.000',
      emoji: '⚠️',
      backgroundColor: AppColors.sakuDaruratBg,
    ),
  ];

  static const List<DepositoItemModel> depositoItems = [
    DepositoItemModel(
      id: 'deposito_1',
      interestRate: '8% p.a.',
      duration: '12 Bulan',
    ),
    DepositoItemModel(
      id: 'deposito_2',
      interestRate: '7% p.a.',
      duration: '6 Bulan',
    ),
    DepositoItemModel(
      id: 'deposito_3',
      interestRate: '6% p.a.',
      duration: '3 Bulan',
    ),
  ];

  static const ExtraBungaBannerModel extraBungaBanner = ExtraBungaBannerModel(
    id: 'extra_bunga_1',
    title: 'Buka Tabungan dengan Extra Bunga',
    subtitle: 'Nabung otomatis setiap hari tanpa repot manual',
    scheduleInfo: 'Auto debt jam 6 Pagi',
    interestRate: '5% p.a.',
    imageAsset: AppAssets.piggyBank,
  );

  static const List<DebitCardItemModel> debitCards = [
    DebitCardItemModel(
      id: 'card_1',
      cardNumberSummary: '00881*****73001',
      cardHolderName: 'Atyla Azfa Al Harits',
      balance: 'Rp 1.000.000',
      assetPath: AppAssets.debitCardGreen,
    ),
    DebitCardItemModel(
      id: 'card_2',
      cardNumberSummary: '00881*****73001',
      cardHolderName: 'Atyla Azfa Al Harits',
      balance: 'Rp 1.000.000',
      assetPath: AppAssets.debitCardGreen,
    ),
  ];
}
