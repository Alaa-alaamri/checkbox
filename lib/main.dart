
import 'dart:async';

import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> { 
  bool ischecked = true;
   var control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
          title: Text("check box"),
         
           
         
         
        ),
      body: Column (children: [
        CheckboxListTile(
          title: Text(" is here "),
          
          selectedTileColor: Color.fromARGB(255, 33, 0, 117),
          activeColor: const Color.fromARGB(255, 167, 161, 161),
          
          
          selected: ischecked,
          value: ischecked, onChanged: (value){
      ischecked = value ?? false;
      setState(() {
        
      });
          })
      ]),
      
        ),
      ),
     
       );
   
   
  }
}