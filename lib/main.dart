import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:paradox/card1.dart';
import 'package:paradox/card2.dart';
import 'package:paradox/footer.dart';
import 'package:paradox/widgets/app_bar.dart';
import 'package:paradox/widgets/banner_image.dart';
import 'package:paradox/frosted_container.dart';
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
          autoPlay: true, enableCaption: false, isLive: false, loop: true),
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container(color: Colors.white)),
              ContainerWithFrostedGlassEffect(),
              Card2(),
              Card1(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
