import 'package:flutter/material.dart';
import 'package:responceive_dashboard/models/income_item_details_model.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  final IncomeItemDetailsModel incomeItemDetailsModel;
  const IncomeItemDetails({
    super.key,
    required this.incomeItemDetailsModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeItemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          incomeItemDetailsModel.title,
          style: AppStyles.font16Regularcolordarkblue(context),
        ),
      ),
      trailing: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          incomeItemDetailsModel.value,
          style: AppStyles.font16MediumColorDarkBlue(context).copyWith(
            color: const Color(0xff208CC8),
          ),
        ),
      ),
    );
  }
}
