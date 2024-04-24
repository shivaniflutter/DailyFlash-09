import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Assignment-1"),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
          ),
          body:
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 60,               
              child: 
               ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) {
                    return  Container(
                   // height: 60,
                    width: 60,
                    margin:const  EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                    color: Colors.black,
                     ),
                    ),
                    );
                  }
                    )
              
              ),
          )
          )
      );
    
       }
          
            
          
          
    
  }
