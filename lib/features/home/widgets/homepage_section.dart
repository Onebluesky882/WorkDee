import 'package:flutter/material.dart';
import 'package:flutter_projects/features/home/controllers/parent_child.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(children: [const SectionRow(), const StateParent()]),
    );
  }
}

class SectionRow extends StatelessWidget {
  const SectionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(flex: 3, child: Container(color: Colors.blue, height: 50)),
        Flexible(flex: 3, child: Container(color: Colors.green, height: 50)),
      ],
    );
  }
}
