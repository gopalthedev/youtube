
import 'package:flutter/material.dart';

class History extends StatelessWidget{
  const History({super.key});

  @override
  Widget build(context){
    return const Column(
      children:[
        Text("video 1"),
        SizedBox(height : 10),
        Text("video 2"),
        SizedBox(height : 10),
        Text("video 3"),
        SizedBox(height : 10),
         Text("video 4")
      ]
    );
  }
}
