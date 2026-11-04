import 'package:bank_jajan/models/content_model.dart';

abstract class StaticData {
  static const List<EWalletItem> eWallets = [
    EWalletItem(
      id: 'ew_1',
      name: 'E-Wallet',
      balanceOrStatus: 'Rp 100.000',
      isConnected: true,
    ),
    EWalletItem(
      id: 'ew_2',
      name: 'GoPay',
      balanceOrStatus: 'Hubungkan',
      isConnected: false,
    ),
    EWalletItem(
      id: 'ew_3',
      name: 'OVO',
      balanceOrStatus: 'Hubungkan',
      isConnected: false,
    ),
  ];

  static const List<TransactionItem> transactionsOctober = [
    TransactionItem(
      id: 'tx_1',
      title: 'ATYLA AZFA AL HARITS',
      date: '06 Okt, 17.19 WIB',
      amount: 70000,
      isIncome: true,
    ),
    TransactionItem(
      id: 'tx_2',
      title: 'My Telkomsel Apps',
      date: '06 Okt, 17.19 WIB',
      amount: 70000,
      isIncome: false,
    ),
  ];

  static const List<TransactionItem> transactionsSeptember = [
    TransactionItem(
      id: 'tx_3',
      title: 'ATYLA AZFA AL HARITS',
      date: '06 Sep, 17.19 WIB',
      amount: 70000,
      isIncome: true,
    ),
    TransactionItem(
      id: 'tx_4',
      title: 'My Telkomsel Apps',
      date: '06 Sep, 17.19 WIB',
      amount: 70000,
      isIncome: false,
    ),
  ];

  static const List<SakuItem> sakuList = [
    SakuItem(
      id: 'saku_1',
      title: 'Ibadah Haji',
      amount: 5000000,
    ),
    SakuItem(
      id: 'saku_2',
      title: 'Tabungan Hari Tua',
      amount: 1000000,
    ),
    SakuItem(
      id: 'saku_3',
      title: 'Kesehatan',
      amount: 3000000,
    ),
    SakuItem(
      id: 'saku_4',
      title: 'Tabungan Darurat',
      amount: 2000000,
    ),
  ];

  static const List<DepositoItem> depositoList = [
    DepositoItem(
      id: 'dep_1',
      ratePercentage: 8.0,
      durationMonths: 12,
    ),
    DepositoItem(
      id: 'dep_2',
      ratePercentage: 7.0,
      durationMonths: 6,
    ),
    DepositoItem(
      id: 'dep_3',
      ratePercentage: 6.0,
      durationMonths: 3,
    ),
  ];

  static const List<DebitCardItem> debitCards = [
    DebitCardItem(
      id: 'card_1',
      cardNumber: '0088 1212 3773 001',
      maskedNumber: '00881*****73001',
      holderName: 'Atyla Azfa Al Harits',
      balance: 1000000,
    ),
    DebitCardItem(
      id: 'card_2',
      cardNumber: '0088 1212 3773 001',
      maskedNumber: '00881*****73001',
      holderName: 'Atyla Azfa Al Harits',
      balance: 1000000,
    ),
  ];
}