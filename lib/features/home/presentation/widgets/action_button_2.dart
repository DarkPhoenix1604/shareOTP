import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActionButton2 extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const ActionButton2({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 14, 104, 177)), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))), minimumSize: MaterialStatePropertyAll(Size(120, 40))),
      child: Text(text, selectionColor: Colors.white, style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Colors.white),),
    );
  }
}
