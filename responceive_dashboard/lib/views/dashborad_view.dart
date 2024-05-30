import 'package:flutter/material.dart';
import 'package:responceive_dashboard/views/dashborad_view_body.dart';

class DashBoradView extends StatelessWidget {
  const DashBoradView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: DashBoradViewBody(),
      ),
    );
  }
}
