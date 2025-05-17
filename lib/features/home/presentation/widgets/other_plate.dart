import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:share_otp/features/home/presentation/widgets/action_button_3.dart';

class OtherPlate extends StatelessWidget {
  final String patternText;
  final String user;
  final DateTime date;
  const OtherPlate({
    super.key,
    required this.patternText,
    required this.user,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        height: 177,
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
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth / 40, bottom: 10, top: 10)),
                  Text(
                    'Pattern: $patternText',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth / 40, bottom: 29, top: 10)),
                  Container(
                    child: Text(
                      'Access: $user',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth / 40, bottom: 29, top: 10)),
                  Container(
                    child: Text(
                      '$date',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: screenWidth / 40)),
                      Container(
                        width: screenWidth -
                            screenWidth / 2.5 -
                            screenWidth / 40 -
                            screenWidth / 20,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            filled: true,
                            contentPadding:
                                EdgeInsets.only(left: screenWidth / 40),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Enter the Pin',
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: screenWidth / 20)),
                      ActionButton3(onPressed: () => (), text: 'Accept'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
