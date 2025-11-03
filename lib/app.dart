import 'package:flutter/material.dart';
import 'package:flutter_projects/features/home/view/Homepage.dart';
// import 'package:flutter_projects/features/auth/view/login_page.dart';
// import 'package:flutter_projects/features/home/view/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      // Routing แบบง่าย
      // initialRoute: '/login',
      // routes: {
      //   '/login': (context) => const LoginPage(),
      //   '/home': (context) => const HomePage(),
      // },
      home: Homepage(),
    );
  }
}
