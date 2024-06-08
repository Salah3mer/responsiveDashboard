import 'package:flutter/material.dart';
import 'package:responceive_dashboard/widgets/adaptive_layout.dart';
import 'package:responceive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responceive_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:responceive_dashboard/widgets/dashboard_desktop_layout.dart';

class DashBoradViewBody extends StatelessWidget {
  const DashBoradViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout());
  }
}
