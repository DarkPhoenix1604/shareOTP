import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/app_colors.dart';
import 'di/injection.dart';
import 'features/home/presentation/pages/add_access.dart';
import 'features/home/presentation/pages/blank_home.dart';
import 'features/home/presentation/pages/enter_otp.dart';
import 'features/home/presentation/pages/enter_phone.dart';
import 'features/home/presentation/pages/home.dart';
import 'features/home/presentation/pages/home_messages.dart';
import 'features/home/presentation/pages/home_other.dart';
import 'features/home/presentation/pages/message_screen.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Injection.messageBloc),
        BlocProvider(create: (context) => Injection.accessUserBloc),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.bgColor,
        useMaterial3: true,
        cardTheme: CardTheme(
          color: AppColors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        textTheme: const TextTheme(
          titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        listTileTheme: ListTileThemeData(
          tileColor: AppColors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MessagesScreen(),
        // '/': (context) => const GettingStarted(),
        '/second': (context) => const EnterPhone(),
        '/third': (context) => const EnterOTP(),
        // '/fourth': (context) => const HomePage(),
        '/fifth': (context) => const AddAccess(),
        '/sixth': (context) => const BlankHome(),
        '/seventh': (context) => const HomeOther(),
        '/eight': (context) => const HomeMessages(),
      },
    );
  }
}
