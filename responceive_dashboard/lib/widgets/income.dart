import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responceive_dashboard/models/income_item_details_model.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';
import 'package:responceive_dashboard/widgets/container_decration.dart';
import 'package:responceive_dashboard/widgets/income_chart.dart';
import 'package:responceive_dashboard/widgets/income_details.dart';
import 'package:responceive_dashboard/widgets/income_header.dart';
import 'package:responceive_dashboard/widgets/income_item_details.dart';
import 'package:responceive_dashboard/widgets/income_section_body.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerDecration(
        padding: 24,
        child: Column(
          children: [IncomeHeader(), IncomSectionBody()],
        ));
  }
}
