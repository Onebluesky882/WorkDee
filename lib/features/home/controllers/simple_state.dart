import 'package:flutter/material.dart';

class StateParent extends StatefulWidget {
  const StateParent({super.key});

  @override
  State<StateParent> createState() => _StateParentState();
}

class _StateParentState extends State<StateParent> {
  String textFromChild = '';

  void _handleChildChanged(String value) {
    setState(() {
      textFromChild = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('textFromChild :${textFromChild}'),
        ChildWidget(onChanged: _handleChildChanged),
      ],
    );
  }
}

class ChildWidget extends StatelessWidget {
  final void Function(String) onChanged;
  const ChildWidget({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(onChanged: onChanged);
  }
}
