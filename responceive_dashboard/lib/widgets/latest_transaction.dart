import 'package:flutter/material.dart';
import 'package:responceive_dashboard/models/user_info_model.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';
import 'package:responceive_dashboard/widgets/user_info_item.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
    required this.item,
  });

  final List<UserInfoModel> item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.font16MediumColorDarkBlue(context),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: item.length,
            itemBuilder: (context, index) =>
                IntrinsicWidth(child: UserInfoItem(userInfoModel: item[index])),
          ),
        )
      ],
    );
  }
}
