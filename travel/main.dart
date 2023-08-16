import 'dart:ui';

import 'package:flutter/material.dart';

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

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor:Color(0xffc2a9bf),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
          children: [
          Row(
            children: [
            Container(
              height: 45,width: 45,
              decoration: BoxDecoration(color: Color(0xffe0deda),borderRadius: BorderRadius.circular(20)),
              child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey,weight: 100),
            ),
              Container(
                height: 50,width: 50,
                alignment: Alignment.center,
                child: Image.asset("assets/animal.png"),

              ),
          ],)
          ],)
    ),
      ),
    );
  }
}
