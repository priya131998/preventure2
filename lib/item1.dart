import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,

      title: 'Preventure',
      home: Item1(),
    );
  }
}

class Item1 extends StatelessWidget {
  static String myVideoId = 'JCyfhBjlMZM';

  // Initiate the Youtube player controller
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
    deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
    return Scaffold(
      //Add an app bar
      appBar: AppBar(
        title: Text("Preventure", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xfff5d20f),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              //profile name
              // SizedBox(
              //   height: deviceHeight(context) * 0.02,
              // ),
              Container(
                width: deviceWidth(context) * 0.90,
                // margin: const EdgeInsets.only(bottom: 160.0),
                child: Text(
                  'Correlations between manual handling training and sports training',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8), fontSize: 20),
                ),
              ),
              Container(
                width: deviceWidth(context) * 0.90,

                // margin: const EdgeInsets.only(bottom: 200.0),

                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Date: 20 Jun 2019',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8), fontSize: 12.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
