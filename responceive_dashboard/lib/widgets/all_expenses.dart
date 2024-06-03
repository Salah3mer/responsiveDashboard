import 'package:flutter/material.dart';
import 'package:responceive_dashboard/widgets/all_expenses_header.dart';
import 'package:responceive_dashboard/widgets/all_expenses_list_view.dart';
import 'package:responceive_dashboard/widgets/container_decration.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerDecration(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
