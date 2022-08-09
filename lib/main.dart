import 'package:flutter/material.dart';
import 'package:my_app/Screen/Screen_home.dart';
import 'package:my_app/constent.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData(
           primaryColor: KPrimaryColor,
      ),
      home: const HomeScreen(),
    );
  }
}


