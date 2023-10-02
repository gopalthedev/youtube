import 'package:flutter/material.dart';
import 'package:youtube/youtubeplayer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer(this.url, {super.key});
  final String url;
  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController _controller;
  late YoutubeMetaData _youtubeMetaData;
  String? videoId;
  Duration? duration;
  String? title;

  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(widget.url);
    _youtubeMetaData = const YoutubeMetaData();
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
    );
  }

  @override
  Widget build(context) {
    print(widget.url);
    print(videoId);
     duration = _youtubeMetaData.duration;
     print(duration);
     print(_youtubeMetaData.title);

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              YouTubeVideoPlayer(widget.url)));
                },
                child:
                    Image.network('https://img.youtube.com/vi/$videoId/0.jpg', fit: BoxFit.cover),
              ),
              Positioned(
                  bottom: 40,
                  right: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),
                    padding: const EdgeInsets.all(8),

                    child: const Text("duration", style: TextStyle(color: Colors.white),),
                  ))
            ],
          ),
          const SizedBox(
            height: 0,
          ),
          const SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 5,),
                CircleAvatar(
                  backgroundColor: Colors.yellowAccent,
                  radius: 25,
                  child: Text("Profile", overflow: TextOverflow.ellipsis,),
                ),
                SizedBox(width: 10,),
                Flexible(child: Text("title", style: TextStyle(color: Colors.white, fontSize: 16),)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
