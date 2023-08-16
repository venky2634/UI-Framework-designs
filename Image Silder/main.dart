import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

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
  List<BannerModel> listBanners = [
    BannerModel(id: "1", imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj9g4X0DtMCRXIdiXMDr2Gntlu66B84aoMEw&usqp=CAU'),
    BannerModel(id: "2", imagePath: 'https://live-production.wcms.abc-cdn.net.au/389233a4173025bd018d3548dbf5d83b?impolicy=wcms_crop_resize&cropH=562&cropW=1000&xPos=0&yPos=0&width=862&height=485'),
    BannerModel(id: "3", imagePath: 'https://i.insider.com/62fe8e22f1df7e0018eb2e12?width=1089&format=jpeg'),
    BannerModel( id: "4", imagePath: 'https://hips.hearstapps.com/hmg-prod/images/dc-movies-in-order-05-justice-league-1608143609.jpg'),
   
];

DateTime today = DateTime.now();
void _onDaySelected(DateTime day, DateTime focusedDay){
  setState(() {
    today = day;
  });
}
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("images"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerCarousel(
              banners: listBanners,
              customizedIndicators: IndicatorModel.animation(width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
              height: 200,
              activeColor: Colors.pink,
              disableColor: Colors.blue,
              animation: true,
              borderRadius: 20,
              width: 2000,
              indicatorBottom: false,
              ),
              SizedBox(height: 40,),
              TableCalendar(focusedDay: today, 
              locale: "en_us",
              rowHeight: 45,
              headerStyle: HeaderStyle(titleCentered: true,formatButtonVisible: false),
              firstDay: DateTime.utc(2010,10,16),
              lastDay: DateTime.utc(2030,10,21),
              onDaySelected: _onDaySelected,
              selectedDayPredicate: (day) => isSameDay(day, today),
              ),
              SizedBox(height: 15,),
              Text("Spiderman",
              style: TextStyle(fontSize: 30,
              fontFamily: "Lobster",
              fontWeight: FontWeight.w500,
              color: Colors.orange),
              ),
              Text("Marvel",style: 
              TextStyle(fontFamily: "Pacifico",
              fontSize: 25,

              ),
              )
              ],
              ),
        ),
      
      ),
      
    );
  }
}
