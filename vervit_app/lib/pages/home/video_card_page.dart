import 'package:flutter/material.dart';
import 'package:vervit_app/database/video_card.dart';
import 'package:vervit_app/pages/home/card_navigation.dart';


class VideoCardPage extends StatefulWidget {
  const VideoCardPage({Key key, this.page}) : super(key: key);

  final CardPage page;

  @override
  _VideoCardPageState createState() => _VideoCardPageState();
}

class _VideoCardPageState extends State<VideoCardPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemCount: widget.page.videos.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, index){
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: VideoCard(video: widget.page.videos[index]),
            ));
          },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}