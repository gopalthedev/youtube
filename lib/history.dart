
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube/feed_data.dart';
import 'package:youtube/youtubeplayer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class History extends StatelessWidget{
  const History({super.key});

  @override
  Widget build(context){
    return  Column(
        children:[
          Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        child: Icon(Icons.history, color: Colors.white,),
                      ),
                      const SizedBox(width: 10,),
                      Text("History", style: GoogleFonts.roboto(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w200),),
                      TextButton(onPressed: (){}, child: const Text("View all", style: TextStyle(color:Colors.blue),)),
                    ],
                  ),
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...feed.map((data){
                          var videoId = YoutubePlayer.convertUrlToId(data.url);
                          return Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 150,
                                child:  InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                YouTubeVideoPlayer(data.url)));
                                  },

                                  child:
                                  Image.network('https://img.youtube.com/vi/$videoId/0.jpg', fit: BoxFit.cover),
                                ),
                              )
                            ],
                          );
                        })
                      ],
                    )
                )
              ]
          )
        ]
    );
  }
}
