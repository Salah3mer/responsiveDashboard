import 'package:flutter/material.dart';
import 'package:responceive_dashboard/models/transaction_history_model.dart';
import 'package:responceive_dashboard/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const item = [
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        subTitle: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionHistoryModel(
        title: 'Landing Page project',
        subTitle: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
    TransactionHistoryModel(
        title: 'Juni Mobile App project',
        subTitle: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: item
            .map((e) => TransactionHistoryItem(transactionHistoryModel: e))
            .toList());
  }
}
