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
         backgroundColor: Colors.black,
         body: Padding(
           padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
           child: SafeArea(
            child: Column(
              children: [
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(children: [
                  Icon(Icons.arrow_back,color: Colors.white,size: 30,)
                ],),
                Row(
                  children: [
                  Icon(Icons.flag_outlined,color: Colors.white,size: 30,),
                  SizedBox(width: 25,),
                   Icon(Icons.more_vert,color: Colors.white,size: 30,),
                ],)
               ],),
               SizedBox(height: 12,),
               Container(
                height: 80,width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.purple,shape: BoxShape.circle),
                child: Text("v",style: TextStyle(fontSize:60,color: Colors.white,),textAlign: TextAlign.center,),
               ),
               SizedBox(height: 12,),
               Text("To Vishnu Varadhan",style: TextStyle(fontSize: 18,color: Colors.white),),
               SizedBox(height: 4,),
               Text("+919789413896",style: TextStyle(fontSize: 15,color: Colors.white),),
               SizedBox(height: 8,),
               Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Icon(Icons.currency_rupee,color: Colors.white,size: 38,),
              Text( '700',style: TextStyle(fontSize: 55,color: Colors.white),),
              ],),
              SizedBox(height: 13,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                  Container(
                    height: 46,width: 140,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 105, 173, 228),borderRadius: BorderRadius.circular(30)),
                    child: Text( 'Pay Again',style: TextStyle(fontSize: 16,color: Colors.white),),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 46,width: 170,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(width: 2,color: Color.fromARGB(255, 105, 173, 228)),borderRadius: BorderRadius.circular(30)),
                    child: Text( 'Split with friends',style: TextStyle(fontSize: 16,color: Colors.white),),
                  ),
                ],),
              ),
              SizedBox(height: 18,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.check_circle,color: Colors.green,),
                SizedBox(width: 12,),
                Text( 'Completed',style: TextStyle(fontSize: 16,color: Colors.white),),
              ],),
              SizedBox(height: 12,),
              Container(
                height: 2,width: 280,
                decoration: BoxDecoration(color: Colors.brown),
              ),
              SizedBox(height: 12,),
               Text( 'Aug 3, 2023 8:07 PM',style: TextStyle(fontSize: 16,color: Colors.white),),
               SizedBox(height: 15,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Container(
                  height: 320,width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.brown),borderRadius: BorderRadius.circular(25)),
                 child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 15,right: 15),
                    child: Row(
                      children: [
                      ClipRRect(borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 50,width: 50,
                          alignment: Alignment.center,
                          child: Image.asset("assets/icici.webp",height: 50,width: 50,)),
                      ),
                      SizedBox(width: 25,),
                      Text( 'ICICI Bank 0679',style: TextStyle(fontSize: 16,color: Colors.white),),
                      SizedBox(width: 75,),
                      Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 35,)
                    ],),
                  ),
                  SizedBox(height: 10,),
                  Container(
                height: 2,width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.brown),
               ),
                 Padding(
                  padding: const EdgeInsets.only(left: 20,top: 15,bottom: 10),
                   child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("UPI transaction ID",style: TextStyle(fontSize: 15,color: Colors.white),),
                              SizedBox(height: 5,),
                               Text("320454825434",style: TextStyle(fontSize: 12,color: Colors.white),), 
                           ],),
                           ],),
                           SizedBox(height: 17,),
                           Row(
                             children: [
                               Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("To:VISHNUVARADHAN M L",style: TextStyle(fontSize: 15,color: Colors.white),),
                                  SizedBox(height: 5,),
                                   Text("vishnuvardhan.eceb2015-1@okicici",style: TextStyle(fontSize: 12,color: Colors.white),), 
                               ],),
                             ],),
                         SizedBox(height: 17,),
                           Row(
                             children: [
                               Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("From:Yuvaraj C (ICICI Bank)",style: TextStyle(fontSize: 15,color: Colors.white),),
                                  SizedBox(height: 5,),
                                   Text("yuvarajchandrasekar97@okhdfcbank",style: TextStyle(fontSize: 12,color: Colors.white),), 
                               ],),
                             ],),
                             SizedBox(height: 17,),
                           Row(
                             children: [
                               Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Google transaction ID",style: TextStyle(fontSize: 15,color: Colors.white),),
                                  SizedBox(height: 5,),
                                   Text("CICAgNCyIKqIZQ",style: TextStyle(fontSize: 12,color: Colors.white),), 
                               ],),
                             ],),
                     ],
                   ),
                 )
                 ],),
                 ), 
               ),
               SizedBox(height: 5,),
               Container(
                padding: EdgeInsets.only(left: 20),
                height: 87,width:  MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color.fromARGB(255, 63, 55, 55),borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                child: Row(
                  children: [
                    Row(
                      children: [
                      Container(
                       height: 50,width: 175,
                        decoration: BoxDecoration(color: Colors.black,border: Border.all(width: 2),borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              height: 20,width: 20,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(color: Colors.black,border: Border.all(width: 1,color: Colors.blue),shape: BoxShape.circle),
                            child:  Icon(Icons.question_mark_sharp,color: Colors.blue,size: 15,),
                          ),
                          SizedBox(width: 15,),
                          Text("Having issues?",style: TextStyle(fontSize: 15,color: Colors.white),), 
                        ],),
                      )
                    ],),
                    SizedBox(width: 15,),
                    Row(
                      children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                       height: 50,width: 100,
                        decoration: BoxDecoration(color: Colors.black,border: Border.all(width: 2),borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(Icons.share,color: Colors.blue,size: 20,),
                          SizedBox(width: 15,),
                          Text("Share",style: TextStyle(fontSize: 15,color: Colors.white),), 
                        ],),
                      )
                    ],),
                  ],),
               ),
            ],)
            ),
         ),  
    );
  }
}
