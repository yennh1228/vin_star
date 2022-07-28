// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:vin_star/check.dart';
import 'package:vin_star/left_menu_page.dart';
import 'package:vin_star/signin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
