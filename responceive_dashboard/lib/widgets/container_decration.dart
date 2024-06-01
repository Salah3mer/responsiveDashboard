import 'package:flutter/material.dart';

class ContainerDecration extends StatelessWidget {
  final Widget child;
  final double? padding;
  const ContainerDecration({
    super.key,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding ?? 20),
        margin: const EdgeInsets.only(top: 24),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: child);
  }
}
