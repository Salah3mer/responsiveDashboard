import 'package:flutter/material.dart';
import 'package:responceive_dashboard/models/all_expenses_item_model.dart';
import 'package:responceive_dashboard/utils/app_images.dart';
import 'package:responceive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    const AllExpensesItemModel(
        image: AppImages.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: AppImages.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: AppImages.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                currentIndex = 0;
              });
            },
            child: AllEpensesItem(
              allExpensesItemModel: items[0],
              isActive: currentIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: AllEpensesItem(
              allExpensesItemModel: items[1],
              isActive: currentIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: AllEpensesItem(
              allExpensesItemModel: items[2],
              isActive: currentIndex == 2,
            ),
          ),
        )
      ],
    );
    return Row(
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      return Expanded(
        child: InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Padding(
              padding: index == 1
                  ? const EdgeInsets.symmetric(horizontal: 12)
                  : const EdgeInsets.symmetric(horizontal: 0),
              child: AllEpensesItem(
                allExpensesItemModel: item,
                isActive: currentIndex == index,
              )),
        ),
      );
    }).toList());
  }
}
