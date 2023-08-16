import 'package:flutter/material.dart';
import 'package:money/details.dart';
import 'package:money/plant.dart';

class body extends StatelessWidget {
   body({super.key, required this.text,});

final String text;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        Header(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
              height: 24,
              child: Stack(
                children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text("Recommended",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Positioned(bottom: -5,left: 0,right: 0,
                child: Container(
                height: 7,
                color: Colors.green,
                ),
              )
              ],),
              ),
              Spacer(),
              MaterialButton(onPressed: (){},color: Colors.green,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Text("More",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ],),
        ),
        SizedBox(height: 5,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: plant(
                    image: "assets/image_1.png",
                    title: "Samantha",
                    country: "Russia",
                    price: 440,
                  ),
                ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: plant(
                image: "assets/image_2.png",
                title: "Aloe vera",
                country: "Europe",
                price: 400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: plant(
                image: "assets/image_3.png",
                title: "Angelica",
                country: "England",
                price: 380,
              ),
            ),
            ],),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
              height: 24,
              child: Stack(
                children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Text("Featured Plan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Positioned(bottom: -5,left: 0,right: 0,
                child: Container(
                height: 7,
                color: Colors.green,
                ),
              )
              ],),
              ),
              Spacer(),
              MaterialButton(onPressed: (){
                
              },color: Colors.green,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Text("More",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ],),
            ),
        SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  height: 185,width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/bottom_img_1.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  height: 185,width: 180,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/bottom_img_2.png"),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 5,right: 5),
                child: Container(
                  height: 185,width: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("assets/bitcoin.png"),
                ),
              ),
            ],),
        ),
        
      ],),
    );
  }
}

