import 'package:flutter/material.dart';
import 'package:flutter_projects/common/constants/colors.dart';
import 'package:flutter_projects/common/layouts/appbar.dart';
import 'package:flutter_projects/common/layouts/footer_mobile.dart';

class MainLayout extends StatelessWidget {
  final AppBar? appBar;
  final BottomNavigationBar? bottomNavigationBar;
  final Widget body;
  const MainLayout({
    super.key,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBG,
      appBar: CustomAppBar(),
      body: body,
      bottomNavigationBar: BottomNav(),
    );
  }
}
