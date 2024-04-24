
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextFieldDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});
  @override
  State<TextFieldDemo> createState() {
    return _TextFieldDemoState();
  }
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Assignment-4"),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextField(
                
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.purple,
                  hintText: "Enter Username,",
                  focusColor: Colors.black,
                  
                  label: const Text("Username",
                  selectionColor: Colors.black,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){}, 
            child: const Text("Submit")),
          ],
          
        ),
        
        
    
        
      ),
    );
  }
}
