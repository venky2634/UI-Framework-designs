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

  List maldives = ["assets/ocean.jpg","assets/stone.jpg","assets/sun.jpg","assets/couples.jpg"
                   "assets/green.jpg","assets/fish.jpg","assets/home.jpg","assets/sea.jpg"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor:Color.fromARGB(255, 207, 191, 205),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: [
          Padding(
            padding:  EdgeInsets.only(left: 15,right: 15,top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                height: 45,width: 45,
                decoration: BoxDecoration(color: Color(0xffe0deda),borderRadius: BorderRadius.circular(20)),
                child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey,weight: 100),
              ),
              Container(
                height: 50,width: 50,
                alignment: Alignment.center,
                child: Image.asset("assets/man.png"),
              ),
            ],),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 15,right: 15),
            child: Row(
              children: [
             ClipRRect(borderRadius: BorderRadius.circular(35),
               child: Container(
                height: 242,width: 362,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.white),
                child: Image.asset("assets/ocean.jpg",fit: BoxFit.contain,),
                 ),
                 )
               ],),
               ),
               SizedBox(height: 20,),
               Padding(
               padding: const EdgeInsets.only(left: 15,right: 15),
               child: Container(
               height: 90,width: double.infinity,
               child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: maldives.length,
                  itemBuilder: (context,index){
                    return ClipRRect(borderRadius: BorderRadius.circular(65),
                      child: Container(
                        margin: EdgeInsets.only(right: 10,left: 10),
                        height: 70,width: 120,
                        decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(maldives[index],fit: BoxFit.fill,),
                      ),
                    );
                  }),
               ),
               ),
            SizedBox(height: 15),
            Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 250,width: double.infinity,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(35)),
            child: Column(
            children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(height: 30),
            Container(
                height: 10,width: 170,
                decoration: BoxDecoration(color: Color.fromARGB(255, 214, 210, 210),borderRadius: BorderRadius.circular(5)),
              )
            ],),
            Row(
              children: [
              Text("Maldives",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,color: Colors.blueAccent,fontWeight: FontWeight.bold),), 
            ],),
            SizedBox(height: 15,),
            Row(
                children: [
                Container(
                height: 30,width: 30,
                alignment: Alignment.center,
                child: Image.asset("assets/star.png"),
              ),
              Container(
                height: 30,width: 30,
                alignment: Alignment.center,
                child: Image.asset("assets/star.png"),
              ),
               Container(
                height: 30,width: 30,
                alignment: Alignment.center,
                child: Image.asset("assets/star.png"),
              ),
              Container(
                height: 30,width: 30,
                alignment: Alignment.center,
                child: Image.asset("assets/star.png"),
              ),
                Container(
                height: 30,width: 30,
                alignment: Alignment.center,
                child: Image.asset("assets/star1.png"),
              ),
            ],),
             SizedBox(height: 15,),
             Row(
               children: [
                 Text("The Maldives is an independent island country \nin the north-central Indian Ocean"),
               ],),
             SizedBox(height: 20,),
             Row(
               children: [
                 Text("The Maldives are known as “the tropical paradise” for \nreasons such as its beauty. This tropical country has \nseparated islands"),
               ],), 
             ],),
           ),
            Container(
                height:MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,
                color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: Text("Best place",textAlign: TextAlign.center,style: TextStyle(fontSize:26,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
               ),
          ],),
        ),
        ),
    );
  }
}
