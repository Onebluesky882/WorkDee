import 'package:flutter/material.dart';
import 'package:flutter_projects/common/constants/theme.dart';
import 'package:flutter_projects/features/home/view/Homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WorkDee',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: Homepage(),
    );
  }
}
