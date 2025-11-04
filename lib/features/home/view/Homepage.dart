import 'package:flutter/material.dart';
import 'package:flutter_projects/common/widgets/custom_border.dart';
import 'package:flutter_projects/features/home/controllers/parent_child.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(color: Colors.grey),

            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(color: Colors.blue, height: 50),
                    ),
                    Flexible(
                      flex: 3,
                      child: Container(color: Colors.green, height: 50),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    Container(width: 60, height: 60, color: Colors.green),
                    Positioned(
                      top: 70,
                      left: 50,
                      child: Container(
                        width: 40,
                        height: 40,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          StateParent(),
        ],
      ),
      bottomNavigationBar: CusTomBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          child: BottomAppBar(
            color: Theme.of(context).colorScheme.surface,

            height: 48,
            child: Row(
              children: [
                IconButton(icon: const Icon(Icons.home), onPressed: () {}),
                IconButton(icon: const Icon(Icons.favorite), onPressed: () {}),
                IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* 


 */
