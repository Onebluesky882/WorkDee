import 'package:flutter/material.dart';
import 'package:flutter_projects/features/home/controllers/simple_state.dart';
import 'package:flutter_projects/features/home/widgets/right_menu.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('WorkDee', style: TextStyle(fontWeight: FontWeight.normal)),
          ],
        ),

        // Left side icon (leading)
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),

        //left
        actions: [RightMenu()],
      ),

      body: Column(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(child: Column(children: [Column()])),
          ),
          StateParent(),
        ],
      ),
    );
  }
}
