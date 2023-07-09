import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoScrollableScreen extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableScreen({Key? key, required this.videos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          color: Colors.red,
          child: Text('Page 1'),
        ),
        Container(
          color: Colors.blue,
          child: Text('Page 2'),
        )
      ],
    );
  }
}
