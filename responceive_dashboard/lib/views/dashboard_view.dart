import 'package:flutter/material.dart';
import 'package:responceive_dashboard/views/dashborad_view_body.dart';
import 'package:responceive_dashboard/widgets/custom_drower.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({
    super.key,
  });

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.menu_outlined),
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
              ),
            )
          : null,
      backgroundColor: const Color(0xffE5E5E5),
      body: const DashBoradViewBody(),
    );
  }
}
