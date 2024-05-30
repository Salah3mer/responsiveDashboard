import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';

class UserInfoItem extends StatelessWidget {
  const UserInfoItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(
            title,
            style: AppStyles.font16SimeBoldcolordarkblue,
          ),
          subtitle: Text(
            subTitle,
            style: AppStyles.font12RegulercolorlightGray,
          ),
        ),
      ),
    );
  }
}
