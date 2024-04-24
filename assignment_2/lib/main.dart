//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final List<String> assetsImages = [
    "assets/Image1.png",
    "assets/image2.png",
    "assets/image3.png",
    "assets/image4.png",
    "assets/image5.jpg",
    "assets/image6.png",
    "assets/image7.png",
    "assets/image8.png",
    "assets/image9.png",
    "assets/image10.png",
  ];
  final List<String> flags = [
    "India",
    "china",
    "USA",
    "Bangladesh",
    "England",
    "Bhutan",
    "Norway",
    "Rassia",
    "Arjentina",
    "Quatar"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Assignment-2"),
              centerTitle: true,
              backgroundColor: Colors.lightBlue,
            ),
            body: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Row(
                             // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  assetsImages[index],
                                  height: 80,
                                  width: 80,
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  width: 200,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      flags[index],
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ])));
                })));
  }
}
