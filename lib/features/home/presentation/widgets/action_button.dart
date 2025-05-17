import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const ActionButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromARGB(255, 14, 104, 177)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          minimumSize: MaterialStatePropertyAll(Size(screenWidth / 1.2, 40))),
      child: Text(
        text,
        selectionColor: Colors.white,
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
