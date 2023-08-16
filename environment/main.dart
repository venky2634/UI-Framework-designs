import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
   backgroundColor: Color.fromARGB(255, 98, 230, 230),
    body: SafeArea(
      child: Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 100,width: 100,
            alignment: Alignment.center,
            child: Image.asset("assets/boy.png"),
          ),
        ),     
      ],),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.only(left: 30,right: 20),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text("Good Morning",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromRGBO(194, 181, 181, 1)),), 
          SizedBox(height: 10,),
          Text("Christina",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)   
          ],),
          Icon(Icons.search,color: Colors.black,size: 40,),
        ],),
      ),
      SizedBox(height: 25,),
      Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Container(
          height: 110, width: 360,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25)),
          gradient: LinearGradient(colors: [Colors.purple,Colors.purpleAccent])),
          child: Row(
            children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              height: 60,width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(27)),
            child: Icon(Icons.message,size: 37,),
            ),
            SizedBox(width: 20,),
            Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                children: [  
                Text("DAILY REFLECTION",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 83, 82, 82)),),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward),
              ],),
              SizedBox(height: 7,),
              Text("Self-love",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white)),
            ],),
          ],),
        ),
      ],),
      SizedBox(height: 50,),
      Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
          height: 110, width: 270,
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25)),
          color: Colors.white),
          child: Stack(
            children: [
            Positioned(top: 15,
              child: Container(
                
              height: 85,width: 85,
              alignment: Alignment.center,
              child: Image.asset("assets/happy.png"),
              ),
            ),
            Positioned(
             child: Padding(
            padding: EdgeInsets.only(left: 40),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Row(
                children: [
                  Text("Super Awesome",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                ],),
              SizedBox(height: 4,),
              Row(
                children: [
                 Text("9:22 AM",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),),
                 SizedBox(width: 25),
                 Icon(Icons.account_circle,size: 35,color: Colors.blueGrey,),
                 Icon(Icons.headphones,size: 35,color: Colors.blueGrey),
                 Icon(Icons.handshake_outlined,size: 35,color: Colors.blueGrey)
              ],)
              ],),
          ),
             )
          ],),
          ),
          
          ],)

      ],)
      ),
    );
  }
}
