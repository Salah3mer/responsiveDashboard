import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:responceive_dashboard/widgets/all_expenses_and_qucik_invoice_section.dart';
import 'package:responceive_dashboard/widgets/card_and_transaction_and_income.dart';
import 'package:responceive_dashboard/widgets/card_and_transactoin.dart';
import 'package:responceive_dashboard/widgets/custom_drower.dart';
import 'package:responceive_dashboard/widgets/income.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: AllExpensesAndQuickInvoiceSection(),
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: CardAndTransactionAndIncome())),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
