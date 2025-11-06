import 'package:flutter/material.dart';
import 'package:flutter_projects/features/jobDashboard/widgets/user_form.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UserForm(),
          // GlobalState(onChanged: (_) => notifier.setText('wi ')),
        ],
      ),
    );
  }
}
