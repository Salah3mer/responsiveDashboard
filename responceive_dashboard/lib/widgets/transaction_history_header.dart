import 'package:flutter/material.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.font20SimeBoldcolordarkblue,
        ),
        const Expanded(child: SizedBox()),
        TextButton(
            onPressed: () {},
            child: Text(
              'See All',
              style: AppStyles.font16Mediumcolordarkblue
                  .copyWith(color: const Color(0xff4EB7F2)),
            ))
      ],
    );
  }
}
