
import 'package:flutter/material.dart';

class History extends StatelessWidget{
  const History({super.key});

  @override
  Widget build(context){
    return Column(
      children:[
        const Text("video 1"),
        const SizedBox(height : 10),
        const Text("video 2"),
        const SizedBox(height : 10),
        const Text("video 3"),
        const SizedBox(height : 10),
         const Text("video 4")
      ]
    );
  }
}
