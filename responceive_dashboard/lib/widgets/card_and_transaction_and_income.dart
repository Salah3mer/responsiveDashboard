import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responceive_dashboard/widgets/card_and_transactoin.dart';
import 'package:responceive_dashboard/widgets/income.dart';

class CardAndTransactionAndIncome extends StatelessWidget {
  const CardAndTransactionAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CardAndTransactoin(), Expanded(child: Income())],
    );
  }
}
