import 'package:flutter/material.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/fourth', (_) => false);
              },
              icon: const Icon(
                Icons.person_outline,
                color: Colors.black,
                semanticLabel: 'Me',
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/seventh', (_) => false);
              },
              icon: const Icon(
                Icons.people_alt_outlined,
                color: Colors.black,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/eight', (_) => false);
              },
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.black,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
