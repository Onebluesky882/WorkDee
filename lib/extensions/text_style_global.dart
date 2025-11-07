import 'package:flutter/material.dart';

extension TextStyleGlobal on Text {
  Text _copyWithStyle(TextStyle newStyle) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).merge(newStyle),
    );
  }

  Text get h1 => _copyWithStyle(
    const TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
  );

  Text get h2 => _copyWithStyle(
    const TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
  );
  Text get p => _copyWithStyle(
    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
  );

  Text color(Color c) => _copyWithStyle(TextStyle(color: c));
}
