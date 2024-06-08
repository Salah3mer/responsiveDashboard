import 'package:flutter/material.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';
import 'package:responceive_dashboard/widgets/transaction_history_header.dart';
import 'package:responceive_dashboard/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.font16MediumColorDarkBlue(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView()
      ],
    );
  }
}
