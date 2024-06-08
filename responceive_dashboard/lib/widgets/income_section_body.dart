import 'package:flutter/material.dart';
import 'package:responceive_dashboard/widgets/detailed_income_chart.dart';
import 'package:responceive_dashboard/widgets/income_chart.dart';
import 'package:responceive_dashboard/widgets/income_details.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1200 && width < 1750
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(
                width: 30,
              ),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
