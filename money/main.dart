import 'package:flutter/material.dart';
import 'package:money/body.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.green,
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
      backgroundColor: Color.fromARGB(255, 107, 208, 221),
      appBar: buildAppBar(),
      body: body(text: '',),
      bottomNavigationBar: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35))),
      child: Padding(
        padding: const EdgeInsets.only(left: 40,right: 40),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          IconButton(onPressed: (){}, icon: Image.asset("assets/flower.png")),
          IconButton(onPressed: (){}, icon: Image.asset("assets/heart.png")),
          IconButton(onPressed: (){}, icon: Image.asset("assets/user.png")),
        ],),
      ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
     elevation: 0,
      leading: IconButton(onPressed: (){}, 
      icon: Image.asset("assets/menu1.png")
      )
      );
  }
}
