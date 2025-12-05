import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.go('signup');
      },
      child: Text('data'),
    );
  }
}
