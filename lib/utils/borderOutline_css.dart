import 'package:flutter/material.dart';

class BorderOutline extends BoxDecoration {
  BorderOutline({Color borderColor = Colors.red})
    : super(border: Border.all(color: borderColor));
}
