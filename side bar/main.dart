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
      appBar: AppBar(

        title: Text("Side Bar"),
      ),
     drawer: Drawer(
      child: Column(children: [
        Container(
          height: 200,width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ClipRRect(borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 100,width: 100,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Image.asset("assets/DSC01307.JPG",fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text("Venky",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              Text("Venky.123@gmail.com",style: TextStyle(fontSize: 12,color: Colors.white),),
            ]),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person,size: 30,),
          title: Text("Profile",style: TextStyle(fontSize: 20),),
          onTap: () {
          },
        ),
         ListTile(
          leading: Icon(Icons.settings,size: 30,),
          title: Text("Settings",style: TextStyle(fontSize: 20),),
          onTap: () {
          },
        ),
          ListTile(
          leading: Icon(Icons.logout,size: 30,),
          title: Text("Logout",style: TextStyle(fontSize: 20),),
          onTap: () {
          },
        ),
      ],),
     ),
    );
  }
}
