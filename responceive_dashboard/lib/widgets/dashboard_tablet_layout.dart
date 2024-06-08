import 'package:flutter/material.dart';
import 'package:responceive_dashboard/widgets/all_expenses_and_qucik_invoice_section.dart';
import 'package:responceive_dashboard/widgets/card_and_transaction_and_income.dart';
import 'package:responceive_dashboard/widgets/custom_drower.dart';
import 'package:responceive_dashboard/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: DashboardMobileLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
