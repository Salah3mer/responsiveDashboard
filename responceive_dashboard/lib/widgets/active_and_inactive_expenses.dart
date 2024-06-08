import 'package:flutter/material.dart';
import 'package:responceive_dashboard/models/all_expenses_item_model.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';
import 'package:responceive_dashboard/widgets/all_expenses_item_header.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xffF1F1F1),
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.title,
                style: AppStyles.font16SemiBoldColorDarkBlue(context)),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.date,
                style: AppStyles.font14RegularColorLightGray(context)),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.price,
                style: AppStyles.font24SemiBoldColorWhite(context)
                    .copyWith(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            isActive: true,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.title,
                style: AppStyles.font16SemiBoldColorDarkBlue(context)
                    .copyWith(color: Colors.white)),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.date,
                style: AppStyles.font14RegularColorLightGray(context)
                    .copyWith(color: const Color(0xffFAFAFA))),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.price,
                style: AppStyles.font24SemiBoldColorWhite(context)),
          ),
        ],
      ),
    );
  }
}
