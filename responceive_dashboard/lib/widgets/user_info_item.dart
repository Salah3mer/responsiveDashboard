import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responceive_dashboard/models/user_info_model.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';

class UserInfoItem extends StatelessWidget {
  const UserInfoItem({super.key, e, required this.userInfoModel});
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        color: const Color(0xffFAFAFA),
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(userInfoModel.image),
            title: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                userInfoModel.title,
                style: AppStyles.font16SemiBoldColorDarkBlue(context),
              ),
            ),
            subtitle: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                userInfoModel.subTitle,
                style: AppStyles.font12RegularColorDarkBlue(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
