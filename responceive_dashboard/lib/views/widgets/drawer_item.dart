import 'package:flutter/material.dart';
import 'package:responceive_dashboard/models/drower_item_model.dart';
import 'package:responceive_dashboard/views/widgets/active_and_inactive.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drowerItemModel;
  final bool isActive;

  const DrawerItem(
      {super.key, required this.drowerItemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drowerItemModel: drowerItemModel)
        : InActiveDrawerItem(drowerItemModel: drowerItemModel);
  }
}
