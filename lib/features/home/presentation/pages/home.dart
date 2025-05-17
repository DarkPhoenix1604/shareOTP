// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:share_otp/api/api.dart';
// import 'package:share_otp/features/home/presentation/widgets/action_button_2.dart';
// import 'package:share_otp/core/widget/nav_bar.dart';
// import 'package:share_otp/features/home/presentation/widgets/access_plate.dart';
// import 'package:sms_advanced/sms_advanced.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }


// class _HomePageState extends State<HomePage> {
//   @override
//   Future<void> mymessage() async {
//     try {
//       SmsQuery query = SmsQuery();
//       SmsSender sender =  SmsSender();
//       String address = "+919257175406";
//       await sender.sendSms(SmsMessage(address, 'Hello flutter world!'));
//     } catch (e) {
//       print(e);
//     }
//   }

//   @override
//   Future<void> fetchSmsMessages() async {
//     try {
//       SmsQuery query = SmsQuery();
//       List<SmsMessage> smsList = await query.getAllSms;
//       for (var message in smsList) {
//         print('Sender: ${message.sender}');
//         print('Body: ${message.body}');
//         print('Timestamp: ${message.date}');
//         print('---');
//       }
//     } catch (e) {
//       print('Error fetching SMS messages: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 204, 204, 204),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 204, 204, 204),
//         title: Text(
//           "Me",
//           style: TextStyle(fontSize: 30),
//         ),
//         actions: [
//           ActionButton2(
//               onPressed: () {
//                 fetchSmsMessages();
//                 // Navigator.pushNamed(context, '/fifth');
//               },
//               text: "+ Add Access"),
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(padding: EdgeInsets.only(bottom: 20)),
//           Center(
//             child: Container(
//               width: screenWidth / 1.02,
//               child: TextField(
//                 onChanged: (value) {
//                   print("the value is $value");
//                 },
//                 decoration: InputDecoration(
//                   fillColor: Color.fromARGB(255, 255, 255, 255),
//                   filled: true,
//                   contentPadding: EdgeInsets.only(left: screenWidth / 40),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   hintText: 'search',
//                   prefixIcon: Icon(
//                     Icons.search,
//                     size: 20,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(padding: EdgeInsets.only(bottom: 20)),
//           AccessPlate(
//             patternText: 'pattern type',
//             user: 'rohit',
//             date: DateTime.now(),
//           ),
//           Padding(padding: EdgeInsets.only(bottom: 10)),
//           AccessPlate(
//             patternText: 'pattern type',
//             user: 'rohan',
//             date: DateTime.now(),
//           )
//         ],
//       ),
//       bottomNavigationBar: NaviBar(),
//     );
//   }
// }
