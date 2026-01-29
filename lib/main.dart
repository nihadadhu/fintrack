import 'package:fintrack/screens/add_member_screen.dart';
import 'package:fintrack/screens/create_acc_screen.dart';
import 'package:fintrack/screens/main_screen.dart';
import 'package:fintrack/screens/login_screen.dart';
import 'package:fintrack/screens/otp_screens.dart';
import 'package:fintrack/screens/payment_plans_screen.dart';
import 'package:fintrack/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Schyler'),
      routes: {
        '/': (_) => SplashScreen(),
        '/Login': (_) => LoginScreen(),
        '/Create Screen': (_) => CreateAccountScreen(),
        '/Payment Screen': (_) => PaymentPlansScreen(),
        '/Main Screen': (_) => MainScreen(),
        '/Otp Screen': (_) => OtpVerificationScreen(),
        '/Add Member': (_) => AddMemberScreen(),
      },
      initialRoute: '/',
    );
  }
}
