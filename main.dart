import 'package:flutter/material.dart';
import 'package:project/Success.dart';
import 'package:project/deliverydetail.dart';
import 'package:project/homedemo.dart';
import 'package:project/homescreen.dart';
import 'package:project/logindemo.dart';
import 'package:project/orderdetaildemo.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: logindemo(),

    );
  }
}


