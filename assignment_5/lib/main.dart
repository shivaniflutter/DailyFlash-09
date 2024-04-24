import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:flutter/rendering.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextDemo(),
    );
  }
}

class TextDemo extends StatefulWidget {
  const TextDemo({super.key});

  State<TextDemo> createState() {
    return _TextDemoState();
  }
}

class _TextDemoState extends State<TextDemo> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String _displayedText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assignment-5"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText:'Name'
            ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              controller:_phoneController ,
              decoration: const InputDecoration(
                labelText: 'PhoneNumber'
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                String name=_nameController.text;
                String phone=_phoneController.text;
                _displayedText='Name:$name\n PhoneNumber:$phone';
                  
                });
              }, 
            child:const Text("Submit")),
            const SizedBox(
              height: 16,
            ),
            Text(
              _displayedText,
              style:const  TextStyle(fontSize:16),
            )
            ],
            
        ),
      ),
    );
  }
}
