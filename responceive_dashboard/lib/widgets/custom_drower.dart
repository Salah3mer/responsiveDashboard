import 'package:flutter/material.dart';
import 'package:responceive_dashboard/models/drower_item_model.dart';
import 'package:responceive_dashboard/models/user_info_model.dart';
import 'package:responceive_dashboard/utils/app_images.dart';
import 'package:responceive_dashboard/widgets/active_and_inactive.dart';
import 'package:responceive_dashboard/widgets/drawer_list_item.dart';
import 'package:responceive_dashboard/widgets/user_info_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.only(top: 30),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: UserInfoItem(
              userInfoModel: UserInfoModel(
                image: AppImages.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            )),
            DrawerListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drowerItemModel: DrawerItemModel(
                        image: AppImages.imagesSettings,
                        title: 'Setting system')),
                InActiveDrawerItem(
                    drowerItemModel: DrawerItemModel(
                        image: AppImages.imagesLogout,
                        title: 'Logout account')),
                SizedBox(height: 30),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
