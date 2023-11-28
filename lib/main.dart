import 'package:flutter/material.dart';
import 'package:simpel_todo/screen/open.dart';
import 'package:simpel_todo/utilities/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TodoLits',
      theme: ThemeData(
          primaryColor: primary,
          // primarySwatch: Colors.blue,
          fontFamily: 'Poppins'),
      home: const OpenScreen(),
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
