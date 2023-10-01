import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:[
        Text("music 1"),
        SizedBox(height : 10),
        Text("video 2"),
        SizedBox(height : 10),
        Text("dance 3"),
        SizedBox(height : 10),
         Text("gaming 4")
        SizedBox(height : 10),
         Text("video 5"),
        SizedBox(height : 10),
        Text("video 6"),
        SizedBox(height : 10),
        Text("video 7"),
        SizedBox(height : 10),
         Text("video 8")
      ]
    );
  }
}
