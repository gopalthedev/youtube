import 'package:flutter/material.dart';
class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
      children:[
        Row(
          children : [
            Container( 
              height : 20,
              width : 150,
              color: Colors.red,
              child : Text("Trending", style : TextStyle(color : Colors.white)),
            )
            Container( 
              height : 20,
              width : 150,
              color: Colors.red,
               child : Text("New Release", style : TextStyle(color : Colors.white)),
            )
          ]
        )
        SizedBox(height : 10)
        Row(
          children : [
            Container( 
              height : 20,
              width : 150,
              color: Colors.red,
               child : Text("Reels", style : TextStyle(color : Colors.white)),
            )
            Container( 
              height : 20,
              width : 150,
              color: Colors.red,
               child : Text("Drama", style : TextStyle(color : Colors.white)),
            )
          ]
        )
        SizedBox(height : 10)
        Row(
          children : [
            Container( 
              height : 20,
              width : 150,
              color: Colors.red,
               child : Text("Music", style : TextStyle(color : Colors.white)),
            )
            Container( 
              height : 20,
              width : 150,
              color: Colors.red,
               child : Text("Movies", style : TextStyle(color : Colors.white)),
            )
          ]
        )
      ]
    );
  }
}
