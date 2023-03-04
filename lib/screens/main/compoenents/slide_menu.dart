import 'package:flutter/material.dart';

import './drawer_list_tile.dart';

class SlideMenu extends StatelessWidget {
  const SlideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("assets/images/logo.png")),
            DrawerListTile(
              onPress: () {},
              svgSrc: "assets/icons/menu_dashbord.svg",
              title: 'Dashboard',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: "assets/icons/menu_tran.svg",
              title: 'Transaction',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: "assets/icons/menu_task.svg",
              title: 'Task',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: "assets/icons/menu_doc.svg",
              title: 'Documents',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: "assets/icons/menu_store.svg",
              title: 'Store',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: "assets/icons/menu_notification.svg",
              title: 'Notification',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: "assets/icons/menu_profile.svg",
              title: 'Profhile',
            ),
            DrawerListTile(
              onPress: () {},
              svgSrc: "assets/icons/menu_setting.svg",
              title: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
