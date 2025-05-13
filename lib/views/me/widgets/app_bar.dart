import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:super_plus/router/router.dart';

import '../index.dart';

class MeAppBar extends GetView<MeController> implements PreferredSizeWidget {
  const MeAppBar({super.key});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff0e72f0),
      actionsIconTheme: IconThemeData(color: Colors.white, size: 24),

      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // andriod
        statusBarIconBrightness: Brightness.light,
        // ios
        statusBarBrightness: Brightness.light,
      ),
      automaticallyImplyLeading: false,
      title: Text("个人中心", style: TextStyle(fontSize: 18, color: Colors.white)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Iconify(
            Ri.customer_service_2_line,
            color: Colors.white,
            size: 18,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Badge(smallSize: 8, child: Icon(Icons.notifications_outlined)),
        ),
        IconButton(
          onPressed: () {
            Get.toNamed(AppPages.settings.name, preventDuplicates: true);
          },
          icon: Icon(Icons.settings_outlined),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
