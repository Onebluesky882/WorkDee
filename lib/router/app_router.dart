import 'package:flutter/material.dart';
import 'package:flutter_projects/features/home/page/Homepage.dart';
import 'package:flutter_projects/features/intro.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(path: '/splash', builder: (context, state) => const Splash()),
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const Homepage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final offsetAnimation =
              Tween<Offset>(
                begin: const Offset(0, 1), // จากล่างขึ้นบน
                end: Offset.zero,
              ).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
              );
          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    ),
  ],
);
