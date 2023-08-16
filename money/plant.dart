import 'package:flutter/material.dart';
import 'package:money/details.dart';



class plant extends StatelessWidget {
  const plant({super.key, required this.image, required this.title, required this.country, required this.price});
 final String image,title,country;
 final int price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> details()));
    },
      child: Container(
        height: 185,width: 118,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
        Container(
          height: 140,
          alignment: Alignment.center,
          child: Image.asset(image),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
            RichText(text: TextSpan(children: [
              TextSpan(text: "$title\n".toUpperCase(),
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black)),
             TextSpan(text: "$country".toUpperCase(),style: TextStyle(fontSize: 12,color: Colors.black))
            ])
            ),
            Spacer(),
            Text("\$$price",style: TextStyle(fontSize: 13,color: Colors.pink),)
          ],),
        )
        ],),
      ),
    );
  }
}







class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(bottom: 55),
      height: 230,
      color: Colors.white,
      child: Stack(
        children: [
        Container(
          padding: EdgeInsets.only(left: 25,right: 25,bottom: 40),
        height: 180,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),bottomRight: Radius.circular(35))
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Hi Uishopy!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
          Spacer(),
          Image.asset("assets/logo.png",height: 90,width: 90,)
        ],),
        ),
        Positioned(bottom: 28,left: 0,right: 0,
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
        offset: Offset(0, 10),
        blurRadius: 10
        ),],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextField(onChanged: (value){},
            decoration: InputDecoration(hintText: "Search",hintStyle: TextStyle(fontSize: 15,color: Colors.grey),
            enabledBorder: InputBorder.none,focusedBorder: InputBorder.none,suffixIcon: Image.asset("assets/search.png",height: 3,width: 3,)
            ),
          ),
        ),
        ),
        ),
      ],),
    );
  }
}