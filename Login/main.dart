import 'package:flutter/material.dart';

import 'main1.dart';

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
      backgroundColor: Colors.pink,
    body: SafeArea(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(300),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                    height: 380,width: 340,
                    alignment: Alignment.center,
                   child: Image.asset("assets/cat.jpg"),
                  ),
              ),
            ],),
          Expanded(
              child: Container(
                height: double.infinity,width: double.infinity,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))),
               child: Column(
                 children: [
                   SizedBox(height: 18,),
                 Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Login",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),)
                 ],),
                   SizedBox(height: 20,),
                   Row(
                     children: [
                       Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                     Container(
                       height: 155,width: 350,
                       decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(25)),
                       child: Column(
                         children: [
                           Container(
                           padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                             height: 90,
                             child: TextFormField(
                               decoration: InputDecoration(prefixIcon: Icon(Icons.account_box,color: Colors.white,size: 35,),
                                   hintText: "Username",hintStyle: TextStyle(fontSize: 25,color: Colors.black)
                               ),
                             ),
                           ),
                           Container(
                             padding: EdgeInsets.symmetric(horizontal: 20),
                             height: 65,
                             child: TextFormField(
                               decoration: InputDecoration(border: InputBorder.none,prefixIcon: Icon(Icons.lock_open,color: Colors.white,size: 35,),
                                   hintText: "Password",hintStyle: TextStyle(fontSize: 25,color: Colors.black)
                               ),
                             ),
                           ),
                       ],),
                     ),
                   ],),
                   SizedBox(height: 21,),
                   Padding(
                     padding: EdgeInsets.only(top: 2, left: 20,right: 20),
                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       TextButton(onPressed: (){},
                           child: Text("Forget Password?",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.blue),)
                       ),
                       ClipRRect( borderRadius: BorderRadius.circular(25),
                         child: Container(
                           height: 50,width: 120,
                           decoration: BoxDecoration(color: Colors.orange),
                           child: ElevatedButton(onPressed: (){}, 
                           child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                         ),
                       ),
                     ],),
                   ),
                   SizedBox(height: 16,),
                   Padding(
                     padding: EdgeInsets.only(left: 65,right: 65),
                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [

                      Container(
                        height: 37,width: 37,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                        child: Image.asset("assets/facebook.png"),
                      ),
                       Container(
                         height: 37,width: 37,
                         decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                         child: Image.asset("assets/search.png"),
                       ),
                       Container(
                         height: 37,width: 37,
                         decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                         child: Image.asset("assets/apple.png"),
                       ),
                     ],),
                   ),
               ],),
              ),
          ),
        ],),
    ),
    );
  }
}
