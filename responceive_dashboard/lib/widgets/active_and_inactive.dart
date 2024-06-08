import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responceive_dashboard/models/drower_item_model.dart';
import 'package:responceive_dashboard/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drowerItemModel,
  });

  final DrawerItemModel drowerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drowerItemModel.image),
      title: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            drowerItemModel.title,
            style: AppStyles.font16Regularcolordarkblue(context),
          ),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drowerItemModel,
  });

  final DrawerItemModel drowerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drowerItemModel.image),
      title: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            drowerItemModel.title,
            style: AppStyles.font16BoldColorBlue(context),
          ),
        ),
      ),
      trailing: Container(
        width: 3.25,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
