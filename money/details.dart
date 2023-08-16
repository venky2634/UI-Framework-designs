import 'package:flutter/material.dart';


class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox( height: 700,
            child: Row(
              children: [
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Align(alignment: Alignment.topLeft,
                    child: IconButton(padding: EdgeInsets.only(top: 40),
                      onPressed: (){
                      Navigator.pop(context);
                    }, icon: Image.asset("assets/arrow.png")),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Container(
                      padding: EdgeInsets.all(10),
                    height: 62,width: 62,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6),
                    boxShadow: [BoxShadow(offset: Offset(0, 10),blurRadius: 22,color: Colors.black)]
                    ),
                    child: Image.asset("assets/sun.png"),
                    ),
                    ),
                    Spacer(),
                    Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Container(
                      padding: EdgeInsets.all(10),
                    height: 62,width: 62,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6),
                    boxShadow: [BoxShadow(offset: Offset(0, 10),blurRadius: 22,color: Colors.black)]
                    ),
                    child: Image.asset("assets/celsius.png"),
                    ),
                    ),
                    Spacer(),
                    Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Container(
                      padding: EdgeInsets.all(10),
                    height: 62,width: 62,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6),
                    boxShadow: [BoxShadow(offset: Offset(0, 10),blurRadius: 22,color: Colors.black)]
                    ),
                    child: Image.asset("assets/drop.png"),
                    ),
                    ),
                    Spacer(),
                    Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Container(
                      padding: EdgeInsets.all(10),
                    height: 62,width: 62,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6),
                    boxShadow: [BoxShadow(offset: Offset(0, 10),blurRadius: 22,color: Colors.black)]
                    ),
                    child: Image.asset("assets/more.png"),
                    ),
                    ),
                   ],),
                   ),
                   ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),topLeft: Radius.circular(60)),
                    child: Container(
                     height: 700,width: 280,
                     decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),topLeft: Radius.circular(60)),
                     boxShadow: [BoxShadow(offset: Offset(0, 10),blurRadius: 60,color: Colors.black)]),
                    child: Image.asset("assets/img.png",fit: BoxFit.fitHeight,alignment: Alignment.centerLeft,),
                    ),
                  ), 
            ],),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children: [
             RichText(text: TextSpan(children: [
                  TextSpan(text: "Angelica\n".toUpperCase(),
                  style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color: Colors.black)),
                 TextSpan(text: "Russia".toUpperCase(),style: TextStyle(fontSize: 25,color: Colors.grey))
                ])
                ),
                Spacer(),
                Text("\$380",style: TextStyle(fontSize: 30,color: Colors.pink),)
            ],),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            MaterialButton(onPressed: (){},color: Color.fromARGB(255, 27, 88, 28),height: 60,minWidth: 160,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
            child: Text("Buy now",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            Text("Description",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)
            ],),
          )
        ],),
      ),
    
    );
  }
}