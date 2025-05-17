import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MessagePlate extends StatelessWidget {
  final String code_word;
  final String user;
  final String OTP;
  final DateTime date;
  const MessagePlate({
    super.key,
    required this.code_word,
    required this.user,
    required this.date,
    required this.OTP,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        height: 135,
        width: screenWidth / 1.01,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 255, 255, 255),
              border: Border.all(
                width: 1,
                style: BorderStyle.none,
              )),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: screenWidth / 40)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 204, 204, 204),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          style: BorderStyle.none,
                        )),
                    child: Text(
                      '$code_word',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: screenWidth / 3)),
                  Text("$date"),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: screenWidth / 40)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          style: BorderStyle.none,
                        )),
                    child: Text(
                      '$OTP',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: screenWidth / 40)),
                  Container(
                    child: Text(
                      'Access: $user',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
