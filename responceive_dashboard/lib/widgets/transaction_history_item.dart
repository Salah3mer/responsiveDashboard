import 'package:flutter/material.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';
import 'package:responceive_dashboard/models/transaction_history_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key, required this.transactionHistoryModel});
  final TransactionHistoryModel transactionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(
            transactionHistoryModel.title,
            style: AppStyles.font16SemiBoldColorDarkBlue(context),
          ),
          subtitle: Text(
            transactionHistoryModel.subTitle,
            style: AppStyles.font16Regularcolordarkblue(context).copyWith(
              color: const Color(0xFFAAAAAA),
            ),
          ),
          trailing: Text(
            transactionHistoryModel.amount,
            style: AppStyles.font20SemiBoldColorDarkBlue(context).copyWith(
              color: transactionHistoryModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A),
            ),
          ),
        ));
  }
}
