import 'package:flutter/material.dart';
import 'package:flutter_projects/common/constants/images.dart';

class Started extends StatelessWidget {
  const Started({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.cover),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Text('Logo'),
            ),
          ),
        ],
      ),
    );
  }
}
