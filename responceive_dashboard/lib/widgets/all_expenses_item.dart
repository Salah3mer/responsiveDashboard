import 'package:flutter/material.dart';
import 'package:responceive_dashboard/models/all_expenses_item_model.dart';
import 'package:responceive_dashboard/widgets/active_and_inactive_expenses.dart';

class AllEpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  const AllEpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
