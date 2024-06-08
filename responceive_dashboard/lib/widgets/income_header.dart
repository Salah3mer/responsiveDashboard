import 'package:flutter/material.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';
import 'package:responceive_dashboard/widgets/range_options.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
          style: AppStyles.font20SemiBoldColorDarkBlue(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions()
      ],
    );
  }
}
