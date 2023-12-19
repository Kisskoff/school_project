import 'package:flutter/material.dart';
import 'package:school_project/constant/colors.dart';
import 'package:school_project/sreens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        fontFamily: 'Camilla',
      ),
      //home: const SearchPage(),
      home: const SplashScreen(),
    );
  }
}
