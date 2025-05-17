import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AccessPlate extends StatelessWidget {
  final String patternText;
  final String user;
  final DateTime date;
  const AccessPlate({
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
        height: 109,
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
                  Padding(padding: EdgeInsets.only(left: screenWidth / 40)),
                  Text(
                    'Pattern: $patternText',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: screenWidth / 40)),
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
                  Padding(padding: EdgeInsets.only(left: screenWidth / 40)),
                  Container(
                    child: Text(
                      'Created Date: $date',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              )
            ],
            
          ),
          
        ),
      ),
    );
  }
}
