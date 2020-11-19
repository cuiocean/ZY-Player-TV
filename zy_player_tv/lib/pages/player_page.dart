import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

class PlayerScreen extends StatefulWidget {
  final String url;

  PlayerScreen({@required this.url});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<PlayerScreen> {
  final FijkPlayer player = FijkPlayer();

  _VideoScreenState();

  @override
  void initState() {
    super.initState();
    player.setDataSource(widget.url, autoPlay: true);
    player.enterFullScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Fijkplayer Example")),
        body: Container(
          alignment: Alignment.center,
          child: FijkView(
            player: player,
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }
}
