import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/views/widgets/in_and_active_drawer_item.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: UserInfoListTile(
            userInfoModel: UserInfoModel(image: Assets.imagesAvatar3, title: "Lekan Okeowo", subTitle: "demo@gmail.com"),),),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),
         SliverFillRemaining(
           hasScrollBody: false,
           child: Column(
             children: [
               Expanded(child: SizedBox(height: 20)),
               InActiveDrawerItem(drawerItemModel: DrawerItemModel(image: Assets.imagesSettings, title: "Setting system")),
               InActiveDrawerItem(drawerItemModel: DrawerItemModel(image: Assets.imagesLogout, title: "Logout account")),
               SizedBox(height: 48),
             ],
           ),
         )
        ],
      ),
    );
  }
}



