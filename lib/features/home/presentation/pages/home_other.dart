import 'package:flutter/material.dart';
import 'package:share_otp/core/widget/nav_bar.dart';
import 'package:share_otp/features/home/presentation/widgets/other_plate.dart';

class HomeOther extends StatelessWidget {
  const HomeOther({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 204, 204),
        title: Text(
          "Others",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Center(
              child: Container(
                width: screenWidth / 1.02,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    contentPadding: EdgeInsets.only(left: screenWidth / 40),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'search',
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            OtherPlate(
                patternText: 'pattern type', user: 'rohan', date: DateTime.now()),
          ],
        ),
      ),
      bottomNavigationBar: (NaviBar()),
    );
  }
}
