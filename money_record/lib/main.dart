import 'package:flutter/material.dart';
import 'package:money_record/pages/landing_page.dart';
import 'package:money_record/pages/login.dart';
import 'package:money_record/pages/register.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPages(),
    );
  }
}
