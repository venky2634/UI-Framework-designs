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
      home: const youTube(),
    );
  }
}

class youTube extends StatefulWidget {
  const youTube({super.key});

  @override
  State<youTube> createState() => _youTubeState();
}

class _youTubeState extends State<youTube> {
  List names = ["All","Music","Tamil","Flutter","Mixes","Live","Cricket","News","Films","Posts","New"];

  List image = ["assets/pubg.jpg","assets/cricket.jpg","assets/bro.jpg","assets/love.jpg",
                "assets/film.jpg","assets/flutter.png","assets/insta.jpg","assets/news.jpg","assets/music.jpg"];

  List logo = ["assets/pubg1.jpg","assets/throw.png","assets/camera.png","assets/quality.png",
                "assets/film-slate.png","assets/darts.png","assets/dragon.png","assets/news-report.png","assets/mango.jpg"]; 

   List title = ["PUBG Mobile India launch date, trailer and other latest updates",
                "Cricket has become a banana republic; no sensibility, no direction except losing matches",
                 "Bro telugu movie making video|pawan \nkalyan|sai tej|thaman",
                 "Cinema Film Strip Wave Film Reel Stock Vector (Royalty Free) 1422026513 | Shutterstock",
                 "Top resources to level up your Flutter development skills - Bitrise",
                 "Instagram users irked with the new update - Telangana Today"
                 "An enjoyable feature-length meme with a moral science lesson | Tamil News - The Indian Express",
                 "Is Listening to Music Good For Your Health? | Time"];        

   List subtitle = ["Mango Music. 433K views. 14 hours ago"];     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
              child: Row(
                children: [
                  Row(
                  children: [
                   Container(
                    height: 50,width: 50,
                    alignment: Alignment.center,
                    child: Image.asset("assets/youtube.png"),
                    ),
                    SizedBox(width: 10,),
                    Text("YouTube",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),) 
                  ],),
                  SizedBox(width: 20,),
                  Row(children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.cast_sharp),color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.notifications_on_sharp),color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined),color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.person),color: Colors.white,)
                  ],)
                ], ),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                      Container(
                        height: 35,width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: names.length ,
                          itemBuilder: (context,index){
                            return Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 25,width: 70,
                              decoration: BoxDecoration(color: Color.fromARGB(255, 65, 60, 60),borderRadius: BorderRadius.circular(11)),
                              child: TextButton(onPressed: (){}, child: Text(names[index],style: TextStyle(fontSize: 15,color: Colors.white),)),
                            );
                            }),
                      ),  
                ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context,index){
                        return Column(
                          children: [
                          Container(
                            height: 250,width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Image.asset(image[index],fit: BoxFit.fill,),
                          ),
                          ListTile(
                            leading: CircleAvatar(backgroundImage: AssetImage(logo[index]),),
                            title: Text(title[index],style: TextStyle(color: Colors.white),),
                            subtitle: Text("Mango Music. 433K views. 14 hours ago",style: TextStyle(color: Colors.grey)),
                            trailing: Icon(Icons.menu_rounded,color: Colors.white,),
                          )
                        ],);
                      }),
                    ),
                ),
          ],),
        ),
        ),
    );
  }
}