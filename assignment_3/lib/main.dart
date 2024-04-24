import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter/widgets.dart';

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
              title: const Text("Assignment-3"),
              centerTitle: true,
              backgroundColor: Colors.indigoAccent,
            ),
            body: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding:const EdgeInsets.all(20.0),
                      child:
                       Container(
                        padding: const EdgeInsets.all(40.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                          color: Colors.black,
                          
                          ),
                        ),


                        child: Row(
                         // crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                          Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: 
                          Image.asset("assets/image1.jpg",
                          height: 25,
                          width: 25,),
                          ),
                         const SizedBox(
                          width: 30,
                         ),
                          
                         Column(
                          children: [
                          Container(
                           height: 50,
                           width: 100,
                           decoration: BoxDecoration(
                            border:Border.all(
                              color: Colors.black,
                              
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                           ),
                           child: const Center(
                            child: 
                            Text("Core2Web"),
                          ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Center(
                              child: Text("Binecaps"),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                         Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                            border: Border.all(
                            color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Center(
                              child: Text("Incubator"),
                            ),
                          ),
                          ],
                         ),
                         const SizedBox(
                          width: 30,
                         ),
                         Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black
                            ),
                          ),
                          
                          child: 
                        const Icon(
                          Icons.check,
                      
                         size: 50,),
                         )
                        
                         
                        
                         ],
                         
                        ),

                      ),
                      
                      );
                })));
  }
}
