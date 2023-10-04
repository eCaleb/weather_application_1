import 'package:flutter/material.dart';
import 'package:weather_application_1/Containers.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "images/back.png",
            fit: BoxFit.cover,
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                "Montreal",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.2),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 5,
                ),
                child: Text(
                  "19°",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 90,
                      fontWeight: FontWeight.w200),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 10.0,
                ),
                child: Text(
                  "Mostly Clear",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 9.5),
                    child: Text(
                      "H:24°   L:18°",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.5,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              Image.asset("images/House.png"),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 350,
              width: MediaQuery.sizeOf(context).width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 46, 51, 90),
                      Color(0xFF3B267B),
                    ]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 7),
                  Container(
                    height: 9,
                    width: 55,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(221, 27, 27, 27),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Hourly Forecast",
                        style: TextStyle(
                            color: Color.fromARGB(255, 195, 194, 194),
                            fontSize: 18,
                            letterSpacing: 0.5),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "Weekly Forecast",
                        style: TextStyle(
                            color: Color.fromARGB(255, 195, 194, 194),
                            fontSize: 18,
                            letterSpacing: 0.5),
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2.5,
                    color: Color(0xFF48319D),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                          const  SizedBox(width: 15,),
                            ContainerClass(
                                time: '12 AM',
                                degree: '19°',
                                image: Image.asset('images/Weather1.png')),
                            const SizedBox(
                              width: 18,
                            ),
                            ContainerClass(
                                time: 'NOW',
                                degree: '19°',
                                image: Image.asset('images/Weather1.png')),
                            const SizedBox(
                              width: 18,
                            ),
                            ContainerClass(
                                time: '2 AM',
                                degree: '18°',
                                image: Image.asset('images/Weather1.png')),
                            const SizedBox(
                              width: 18,
                            ),
                            ContainerClass(
                                time: '3 AM',
                                degree: '19°',
                                image: Image.asset('images/Weather1.png')),
                            const SizedBox(
                              width: 18,
                            ),
                            ContainerClass(
                                time: '4 AM',
                                degree: '18°',
                                image: Image.asset('images/Weather1.png'))
                          ],
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    "images/Tabbar.png",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
