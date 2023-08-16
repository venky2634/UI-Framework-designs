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

  int _currentIndex = 0;

  final tab = [
  Center(child: Text("Home"),),
  Center(child: Text("Search"),),
  Center(child: Text("Camera"),),
  Center(child: Text("Profile"),)
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Bottomnavigationbar"),
      ),
     body: tab[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      items: [
      BottomNavigationBarItem
      (icon: Icon(Icons.home),
      label: "Home",
      backgroundColor: Colors.blue
      ),
            BottomNavigationBarItem
      (icon: Icon(Icons.search),
      label: "Search",
      backgroundColor: Colors.green
      ),
            BottomNavigationBarItem
      (icon: Icon(Icons.camera),
      label: "Camera",
      backgroundColor: Colors.red
      ),
            BottomNavigationBarItem
      (icon: Icon(Icons.person),
      label: "Person",
      backgroundColor: Colors.pink
      ),
      ],
      onTap: (index){
       setState(() {
         _currentIndex = index;
       });
      },
      ),
    );
  }
}
