import 'package:actor_app/widgets/profile_widget.dart';
import 'package:actor_app/widgets/screen_Icons.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoListItem extends StatefulWidget {
  @override
  _VideoListItemState createState() => _VideoListItemState();
}

class _VideoListItemState extends State<VideoListItem> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset("assets/layi.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          if (_controller.value.isPlaying) {
            _controller.pause();
          } else {
            _controller.play();
          }
        },
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 1.6 / 3,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  VideoProgressIndicator(_controller, allowScrubbing: true),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 40,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    ProfileImageWithBadge(
                      imagePath: 'assets/girl2.png',
                      imageSize: 43,
                      badgeSize: 20,
                    ),
                    SizedBox(height: 15,),
                    ScreenIcons(
                      iconAsset: 'assets/rose.png',
                      text: '256',
                      onPressed: () {},
                    ),
                    SizedBox(height: 15,),
                    ScreenIcons(
                      iconAsset: 'assets/comment_icon.png',
                      text: '25',
                      onPressed: () {},
                    ),
                    SizedBox(height: 15,),
                    ScreenIcons(
                      iconAsset: 'assets/share.png',
                      text: '12',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@AdesuaEtomi',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Proxima Nova',
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'The Seagull (Anton Chekhov)\n#hollywood-english',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Proxima Nova',
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Text(
                'Discover',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            Positioned(
              top: 32,
              right: 20,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
