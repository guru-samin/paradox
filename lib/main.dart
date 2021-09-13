import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:paradox/widgets/app_bar.dart';
import 'package:paradox/widgets/banner_image.dart';
import 'package:paradox/widgets/frosted_container.dart';
import 'package:paradox/widgets/grid_images.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

//Note: This app has been migrated to null safety.
//The app uses sdk: ">=2.12.0 <3.0.0"

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late YoutubePlayerController _controller;

  void runYoutube() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=dpEPNioJ1Ik')!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: false,
        isLive: false,
        loop: true
      ),
    );
  }

  @override
  void initState() {
    runYoutube();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(30), child: MyAppBar()),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: Colors.blue,
                  child: YoutubePlayer(
                    controller: _controller,
                  ),
                ),
              ),
            ),
            BannerImage(),
            GridImages(),
            ContainerWithFrostedGlassEffect(),
          ],
        ),
      ),
    );
  }
}
