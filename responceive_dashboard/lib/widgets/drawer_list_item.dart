import 'package:flutter/material.dart';
import 'package:responceive_dashboard/models/drower_item_model.dart';
import 'package:responceive_dashboard/utils/app_images.dart';
import 'package:responceive_dashboard/widgets/drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({
    super.key,
  });

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: AppImages.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: AppImages.imagesMyTransctions),
    const DrawerItemModel(
        title: 'Statistics', image: AppImages.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: AppImages.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: AppImages.imagesMyInvestments),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (currentIndex != index) {
            setState(() {
              currentIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drowerItemModel: items[index],
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
