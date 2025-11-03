import 'package:flutter/material.dart';

class RightMenu extends StatelessWidget {
  const RightMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Material(
                    color: const Color.fromARGB(26, 0, 0, 0),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),

                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.black.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      // pressed overlay
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
