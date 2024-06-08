import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responceive_dashboard/views/dashboard_view.dart';

class DashBorad extends StatelessWidget {
  const DashBorad({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const DashboardView(),
    );
  }
}
