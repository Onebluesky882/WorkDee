import 'package:flutter/material.dart';
import 'package:flutter_projects/common/constants/colors.dart';
import 'package:flutter_projects/features/home/controllers/riverpod.dart';
import 'package:flutter_projects/features/home/widgets/footer_mobile.dart';
import 'package:flutter_projects/features/home/widgets/right_menu.dart';
import 'package:flutter_projects/features/home/widgets/user_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = ref.watch(customStateProvider);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('WorkDee', style: TextStyle(fontWeight: FontWeight.normal)),
          ],
        ),

        // Left side icon (leading)
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),

        // Right menu
        actions: const [RightMenu()],
      ),

      body: Column(
        children: [
          Text(text),
          UserForm(),
          // GlobalState(onChanged: (_) => notifier.setText('wi ')),
        ],
      ),
      bottomNavigationBar: FooterMobile(),
    );
  }
}
