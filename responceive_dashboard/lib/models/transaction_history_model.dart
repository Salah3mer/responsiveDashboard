class TransactionHistoryModel {
  final String title, subTitle, amount;
  final bool isWithdrawal;

  const TransactionHistoryModel(
      {required this.title,
      required this.subTitle,
      required this.amount,
      required this.isWithdrawal});
}
