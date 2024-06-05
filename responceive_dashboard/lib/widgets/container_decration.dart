import 'package:flutter/material.dart';

class ContainerDecration extends StatelessWidget {
  final Widget child;
  final double? contentPadding;
  final double? padding;

  const ContainerDecration({
    super.key,
    required this.child,
    this.contentPadding,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(contentPadding ?? 20),
        margin: EdgeInsets.only(top: padding ?? 24),
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: child);
  }
}
