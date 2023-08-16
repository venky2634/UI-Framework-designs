import 'package:flutter/material.dart';


class stack1 extends StatefulWidget {
  const stack1({super.key});

  @override
  State<stack1> createState() => _stack1State();
}

class _stack1State extends State<stack1> {

  final color = Colors.purpleAccent;

  cardbuilder(){
    return Container(height: 90,width: 85,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Text("\$70",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
               Text("Discount",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)
              ],),
              );
  }
  List image = [Icons.pie_chart,Icons.safety_check,Icons.search,Icons.payment,Icons.home,Icons.call];
  List name = ["Order","Safety,","Search","Payment","Home","Call"];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(color: color,borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 60),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(height: 90,width: 85,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Text("\$70",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
               Text("Discount",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)
              ],),
              ),
              Container(height: 90,width: 85,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Text("\$50",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
               Text("Discount",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)
              ],),
              ),
              Container(height: 90,width: 85,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Text("\$60",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
               Text("Discount",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)
              ],),
              ),
            ],),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Container(
            height: 630,
           width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
            child: GridView.builder( 
            itemCount: 6,
            itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(height: 90,width: 85,
                decoration: BoxDecoration(color: Color.fromARGB(255, 236, 223, 223),borderRadius: BorderRadius.circular(25),
                boxShadow: [BoxShadow(
                  color: Color.fromARGB(255, 163, 163, 163),
                  blurRadius: 3.0,
                ),],
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(image[index],color: Colors.blue,size: 70,),
                  Text(name[index]),
                  ],),
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            ),
          ),
        )
      ],);
  }
}

