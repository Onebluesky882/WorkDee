import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final BottomNavigationBar? bottomNavigationBar;
  const BottomNav({super.key, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 126, 203, 255).withOpacity(0.5),
            border: Border.all(color: Colors.white.withOpacity(0.3), width: 1),
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: Colors.white, size: 28),
                onPressed: () => print('Home pressed'),
              ),
              IconButton(
                icon: const Icon(Icons.favorite, color: Colors.white, size: 28),
                onPressed: () => print('Favorite pressed'),
              ),
              IconButton(
                icon: const Icon(Icons.settings, color: Colors.white, size: 28),
                onPressed: () => print('Settings pressed'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
