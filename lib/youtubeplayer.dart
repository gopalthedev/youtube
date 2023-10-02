import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeVideoPlayer extends StatefulWidget {
   YouTubeVideoPlayer(this.videoUrl, {super.key});
  final String videoUrl;
  @override
  State<StatefulWidget> createState() {
    return _YouTubeVideoPlayer();
  }
}

class _YouTubeVideoPlayer extends State<YouTubeVideoPlayer> {

  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);

    _controller = YoutubePlayerController(
        initialVideoId: videoId!,

        flags: const YoutubePlayerFlags(
          autoPlay: true,
        ));
    super.initState();
  }

  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          YoutubePlayer(
            controller: _controller,
            aspectRatio: 16/9,
            showVideoProgressIndicator: true,
            onReady: () => debugPrint("ready"),
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
                colors: const ProgressBarColors(
                  playedColor: Colors.red,
                  handleColor: Colors.white70,
                ),
              ),
              const SizedBox(height:10, child: PlaybackSpeedButton())
            ],
          )
        ],
      ),
    );
  }
}
