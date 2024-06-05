import 'package:flutter/material.dart';
import 'package:responceive_dashboard/widgets/adaptive_layout.dart';
import 'package:responceive_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:responceive_dashboard/widgets/desktop_layout.dart';

class DashBoradViewBody extends StatelessWidget {
  const DashBoradViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout());
  }
}
