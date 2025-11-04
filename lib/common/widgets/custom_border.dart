import 'package:flutter/material.dart';

class CusTomBorder extends StatelessWidget {
  final Color? borderColor;
  final double? width;
  final Border? border;
  final BorderRadius? borderRadius;
  final Widget child;
  const CusTomBorder({
    super.key,
    this.width,
    this.border,
    this.borderRadius,
    required this.child,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: width ?? 1.0,
          color: borderColor ?? Colors.red,
        ),
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}
