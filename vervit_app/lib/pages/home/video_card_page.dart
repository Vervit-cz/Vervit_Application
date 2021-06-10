import 'package:flutter/material.dart';
import 'package:vervit_app/components/video_card.dart';
import 'package:vervit_app/pages/home/card_navigation.dart';
import 'package:vervit_app/pages/home/card_video.dart';


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
              margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: VideoCard(
                  name: widget.page.videos[index]['name'],
                  description: widget.page.videos[index]['description'],
                  onTap: () {
                    VideoChooser.chooseVideo(index, widget.page);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CardVideo()));
                  },
                ),
              ),
            );
          },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
