
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:share_otp/features/home/presentation/widgets/action_button.dart';
import 'package:share_otp/api/api.dart';
import 'package:share_otp/features/home/presentation/widgets/action_button_2.dart';

class AddAccess extends StatelessWidget {
  const AddAccess({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 204, 204),
        title: Text(
          'Add Access',
          style: TextStyle(fontSize: 40),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
                height: 100,
                width: screenWidth / 1.02,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                
                children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 40),
                    ),
                    Text(
                      'Enter Pattern',
                      textWidthBasis: TextWidthBasis.parent,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth / 40),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: screenWidth / 40),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: 'Enter Pattern',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                )
              ]),
            ),
          ),
          Center(
            child: Container(
                height: 100,
                width: screenWidth / 1.02,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                
                children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 40),
                    ),
                    Text(
                      'Secret Pin',
                      textWidthBasis: TextWidthBasis.parent,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth / 40),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: screenWidth / 40),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: 'Enter the Pin',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                )
              ]),
            ),
          ),
          Center(
            child: Container(
                height: 100,
                width: screenWidth / 1.02,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                
                children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth / 40),
                    ),
                    Text(
                      'Access',
                      textWidthBasis: TextWidthBasis.parent,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth / 40),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: screenWidth / 40),
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: 'Enter Contact',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                )
              ]),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 60)),
          ActionButton(onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/fourth', (_) => false);
              }, text: 'Continue')
        ],
        
      ),
    );
  }
}
