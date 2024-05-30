import 'package:flutter/material.dart';
import 'package:responceive_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responceive_dashboard/views/widgets/desktop_layout.dart';

class DashBoradViewBody extends StatelessWidget {
  const DashBoradViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayout());
  }
}
