import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_otp/common/image_resources.dart';
import 'package:share_otp/features/home/presentation/widgets/action_button.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({super.key});
  Future<void> permit() async {
    try {
      var status = await Permission.sms.status;
      if (status.isDenied) {
        await Permission.sms.request();
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
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
                    child: ActionButton(
                      onPressed: () {
                        permit();
                        Navigator.pushNamed(context, '/second');
                      },
                      text: "Get Started",
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
