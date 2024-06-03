import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:responceive_dashboard/widgets/all_expenses_and_qucik_invoice_section.dart';
import 'package:responceive_dashboard/widgets/card_and_transactoin.dart';
import 'package:responceive_dashboard/widgets/custom_drower.dart';
import 'package:responceive_dashboard/widgets/my_card_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

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
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 2, child: CardAndTransactoin()),
      ],
    );
  }
}
