import 'package:flutter/material.dart';
import 'package:flutter_projects/common/layouts/main.layout.dart';
import 'package:flutter_projects/features/home/controllers/riverpod.dart';
import 'package:flutter_projects/features/jobDashboard/widgets/user_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(customStateProvider);
    return MainLayout(
      body: Column(
        children: [
          Text(text),
          UserForm(),
          // GlobalState(onChanged: (_) => notifier.setText('wi ')),
        ],
      ),
    );
  }
}
