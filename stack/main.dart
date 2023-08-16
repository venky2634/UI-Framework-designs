
import 'package:flutter/material.dart';
import 'package:stack/home.dart';

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
      home: const home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 125, 228, 241),
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 18,top: 18,),
          child: Row(
            children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/high.png"),
            ),
            SizedBox(width: 15,),
            Text("High-Five", style: TextStyle(fontSize: 20),)
          ],),
        ),
        SizedBox(height: 25,),
        stack1()
        ],),
      ),
    );
  }
}
