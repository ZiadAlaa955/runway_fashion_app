import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeVideo extends StatefulWidget {
  const HomeVideo({super.key});

  @override
  State<HomeVideo> createState() => _HomeVideoState();
}

class _HomeVideoState extends State<HomeVideo> {
  late VideoPlayerController videoController;

  @override
  void initState() {
    videoController =
        VideoPlayerController.asset('assets/videos/runway_video.mov')
          ..initialize().then(
            (value) {
              setState(
                () {
                  videoController.play();
                },
              );
            },
          )
          ..setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: videoController.value.aspectRatio,
      child: VideoPlayer(videoController),
    );
  }
}
