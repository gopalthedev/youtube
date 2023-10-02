import 'package:flutter/material.dart';
import 'package:youtube/video_card.dart';

import 'feed_data.dart';
import 'feed_structure.dart';

class Feed extends StatefulWidget{
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final List<FeedStructure> content = feed;

   final List fixedList = Iterable<int>.generate(feed.length).toList();

  @override
  Widget build(context){
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ...fixedList.map((item){
            FeedStructure val = feed[item];
            return VideoPlayer(val.url);
          })
        ],
      ),
    );
  }
}