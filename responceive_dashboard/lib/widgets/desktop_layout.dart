import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:responceive_dashboard/widgets/all_expenses.dart';
import 'package:responceive_dashboard/widgets/custom_drower.dart';
import 'package:responceive_dashboard/widgets/quick_invoice.dart';

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
          flex: 2,
          child: Column(
            children: [AllExpenses(), QuickInvoice()],
          ),
        )
      ],
    );
  }
}
