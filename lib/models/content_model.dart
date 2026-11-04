class EWalletItem {
  final String id;
  final String name;
  final String balanceOrStatus;
  final bool isConnected;

  const EWalletItem({
    required this.id,
    required this.name,
    required this.balanceOrStatus,
    required this.isConnected,
  });
}

class TransactionItem {
  final String id;
  final String title;
  final String date;
  final double amount;
  final bool isIncome;

  const TransactionItem({
    required this.id,
    required this.title,
    required this.date,
    required this.amount,
    required this.isIncome,
  });
}

class SakuItem {
  final String id;
  final String title;
  final double amount;

  const SakuItem({
    required this.id,
    required this.title,
    required this.amount,
  });
}

class DepositoItem {
  final String id;
  final double ratePercentage;
  final int durationMonths;

  const DepositoItem({
    required this.id,
    required this.ratePercentage,
    required this.durationMonths,
  });
}

class DebitCardItem {
  final String id;
  final String cardNumber;
  final String maskedNumber;
  final String holderName;
  final double balance;

  const DebitCardItem({
    required this.id,
    required this.cardNumber,
    required this.maskedNumber,
    required this.holderName,
    required this.balance,
  });
}