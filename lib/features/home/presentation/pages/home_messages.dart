import 'package:flutter/material.dart';
import 'package:share_otp/features/home/presentation/widgets/messages_plate.dart';
import 'package:share_otp/core/widget/nav_bar.dart';
// import 'package:telephony/telephony.dart';
// import 'package:sms_advanced/sms_advanced.dart';

// List<SmsMessage> messages = [];

class HomeMessages extends StatelessWidget {
  const HomeMessages({super.key});


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 204, 204),
        title: Text(
          "Messages",
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
            MessagePlate(
              code_word: "SMS-AXIS",
              user: "rohan",
              date: DateTime.now(),
              OTP: "523614",
            ),
          ],
        ),
      ),
      bottomNavigationBar: NaviBar(),
    );
  }
}
