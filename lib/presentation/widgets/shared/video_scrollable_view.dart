import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableScreen extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableScreen({Key? key, required this.videos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            Positioned(
                bottom: 40,
                right: 20,
                child: VideoButtonScreen(video: videoPost))
          ],
        );
      },
    );
  }
}
/* return PageView(
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
}*/