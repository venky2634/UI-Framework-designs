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

  late AnimationController _animationController;

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(

      body: Stack(
        children: [
        Positioned(
          height: 800,
          width: MediaQuery.of(context).size.width,
        child: Image.asset("assets/zigzag-arrow.png"),),
        Positioned.fill(
          child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 20,sigmaY: 10),
          child: SizedBox(),
          )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SafeArea(
              child: Column(children: [
                SizedBox(height: 25,),
                Text("Learn \ndesign & code",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("Don't skip design. Learn design and code, by building real apps with flutter and swift. Complete courses about the best tools.",
                style: TextStyle(fontSize: 20,color: Colors.black),),
                SizedBox(height: 50,),

              Stack(
               children: [
                Column(
                  children: [
                    Container(
                      height: 200,width: 500,
                      child: Image.asset("assets/slider.png",
                        ),
                    ),
                  ],
                ),
                Positioned(top: 77,left: 155,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_right,size: 30,),
                      Text("Start",style: TextStyle(fontSize: 30),)
                    ],
                  ),
                ),
                
                
               ],
                
              )
              ],)),
             


          )
         
      ],),
      
    );
  }
}

