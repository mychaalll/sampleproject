import 'package:flutter/material.dart';
import 'package:sampleproject/choice_page.dart';
import 'package:sampleproject/create_account.dart';
import 'package:sampleproject/email_verification_sent.dart';
import 'package:sampleproject/forgot_password.dart';
import 'package:sampleproject/guardian/guardian-home.dart';
import 'package:sampleproject/landing_page.dart';
import 'package:sampleproject/login_page.dart';
import 'package:sampleproject/email_verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
       
      ),
      
      home: guardianHomePage(),
    );
  }
}

