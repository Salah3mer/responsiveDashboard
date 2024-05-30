import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:responceive_dashboard/views/widgets/custom_drower.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: SizedBox(),
        ),
        Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}
