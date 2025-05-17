import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:share_otp/core/widget/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:share_otp/api/api.dart';
import 'package:share_otp/features/home/presentation/widgets/action_button_2.dart';
import 'package:share_otp/features/home/presentation/widgets/access_plate.dart';

class BlankHome extends StatefulWidget {
  const BlankHome({super.key});

  @override
  State<BlankHome> createState() => _HomePageState();
}

class _HomePageState extends State<BlankHome> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 204, 204),
        centerTitle: true,
        title: Text(
          'Authenticator',
          style: TextStyle(fontSize: 40),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(fontSize: 40),
                    ),
                    Text('click add access to add'),
                    Text('security for your messages'),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    ActionButton2(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/fifth', (_) => false);
                        },
                        text: '+ add access'),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NaviBar(),
    );
  }
}
