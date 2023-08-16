import 'dart:convert';
import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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

 List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Rest API call"),
      ),
  body: ListView.builder(
    itemCount: users.length,
    itemBuilder: (context,index){
      final user = users[index];
      final email = user["email"];
     final name = user["name"]["first"];
     final Picture = user ["picture"]["thumbnail"];
      return ListTile(
      title: Text(name.toString()),
      leading: ClipRRect(borderRadius: BorderRadius.circular(28),
        child: Image.network(Picture)),
      subtitle: Text(email),
     
      
      );
    }),
   floatingActionButton: FloatingActionButton(onPressed: (fetchUsers),child: Icon(Icons.add),),
   
    );
  }
  void fetchUsers() async{
    print("fetchUsers");
    const url = "https://randomuser.me/api/?results=99";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    
    setState(() {
     users = json["results"]; 
    });
     print("fetchUsers completed");
  }
}
