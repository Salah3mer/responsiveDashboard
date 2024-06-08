import 'package:flutter/material.dart';
import 'package:responceive_dashboard/widgets/all_expenses_and_qucik_invoice_section.dart';
import 'package:responceive_dashboard/widgets/card_and_transaction_and_income.dart';
import 'package:responceive_dashboard/widgets/card_and_transactoin.dart';
import 'package:responceive_dashboard/widgets/income.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          CardAndTransactoin(),
          Income(),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
