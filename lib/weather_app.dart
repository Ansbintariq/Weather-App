import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  List arry = ["ans", "ali", "out", "put"];
  String date = DateFormat('yyyy-MM-dd - hh:mm').format(DateTime.now());

  List iconsData = [
    {'icon': 'img/Wind.png', 'text': '8.7 KM/h', 'wind': 'Wind'},
    {'icon': 'img/Humidity.png', 'text': '27%', 'wind': 'Humidity'},
    {'icon': 'img/Eye.png', 'text': '1.8 KM/h', 'wind': 'Visibilty'}
  ];
  List rowData = [
    {'text': 'Sun', "icon": "img/rain.png", "text2": "Rainy 25 C"},
    {'text': 'Mon', "icon": "img/sun.png", "text2": "Rainy 25 C"},
    {'text': 'Tues', "icon": "img/ss.png", "text2": "Rainy 25 C"},
    {'text': 'Wes', "icon": "img/rain.png", "text2": "Rainy 25 C"},
    {'text': 'Thu', "icon": "img/sun.png", "text2": "Rainy 25 C"},
    {'text': 'Fri', "icon": "img/rain2.png", "text2": "Rainy 25 C"},
    {'text': 'Sat', "icon": "img/rain.png", "text2": "Rainy 25 C"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF9D54),
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Lahore"),
        backgroundColor: const Color(0xffFF9D54),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    height: 215.55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFAC88),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Lahore",
                              style: TextStyle(
                                  color: Color(0xff344A53),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "25 C",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 56),
                            ),
                            const Text(
                              "Thunderstorm",
                              style: TextStyle(
                                  color: Color(0xff344A53),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(date)
                          ],
                        ),
                        Column(
                          children: const [
                            Positioned(
                              top: 0,
                              right: 0,
                              height: 60,
                              width: 60,
                              child: Image(image: AssetImage("img/cloud.png")),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: iconsData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    height: 120,
                    width: MediaQuery.of(context).size.width * .26,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFAC88),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AssetImage(iconsData[index]["icon"])),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(iconsData[index]["text"].toString()),
                        Text(iconsData[index]["wind"].toString())
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: rowData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width * .9,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFAC88),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(rowData[index]["text"].toString()),
                              Image(image: AssetImage(rowData[index]["icon"])),
                              Text(rowData[index]["text2"].toString())
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
