import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_otp/common/image_resources.dart';
import 'package:share_otp/features/home/presentation/widgets/action_button.dart';

class EnterPhone extends StatelessWidget {
  const EnterPhone({super.key});

  @override
  Widget build(BuildContext context) {
    String Phno;
    String Name;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Image.asset(
          ImageResources.loginBackground,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            titleSpacing: 0.0,
            title: Text(
              "LOGO",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                  top: 20,
                )),
                Text(
                  "FAST, SECURE, and",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "ALWAYS RELIABLE",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 200,
                          width: screenWidth / 1.2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: screenWidth / 40),
                                  ),
                                  Text(
                                    'LOGIN',
                                    textWidthBasis: TextWidthBasis.parent,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: screenWidth / 40),
                                  ),
                                  Text(
                                    'Enter Phone Number',
                                    textWidthBasis: TextWidthBasis.parent,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth / 40),
                                child: TextField(
                                  onChanged: (value) {
                                    Phno = value;
                                    print("the value is $value");
                                  },
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(left: screenWidth / 40),
                                    border: OutlineInputBorder(),
                                    hintText: 'Enter Phone Number',
                                  ),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(10),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 30)),
                        ActionButton(
                          onPressed: () {
                            
                            Navigator.pushNamed(context, '/third');
                          },
                          text: "Send OTP",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
