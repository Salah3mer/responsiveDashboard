import 'package:flutter/material.dart';
import 'package:responceive_dashboard/widgets/container_decration.dart';
import 'package:responceive_dashboard/widgets/my_card_section.dart';
import 'package:responceive_dashboard/widgets/transaction_history.dart';

class CardAndTransactoin extends StatelessWidget {
  const CardAndTransactoin({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerDecration(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TransactionHistory()
      ],
    ));
  }
}
