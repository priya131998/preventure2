import 'package:flutter/material.dart';
import 'package:preventure2/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'ToggleButton.dart';

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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage(
                        title: '',
                      )),
            );
          },
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
              SizedBox(
                height: deviceHeight(context) * 0.005,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                // margin: const EdgeInsets.only(top: 90.0),
                child: YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.amber,
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Mark as watched',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 11.5, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(width: 50.0, height: 20.0, child: Toggle()),
                      ],
                    ),
                    // ],
                  ),
                  //),
                ],
              ),
              SizedBox(
                height: deviceHeight(context) * 0.03,
              ),
              // Container(
              //     margin: const EdgeInsets.only(top: 500.0), child: Toggle()),
              Container(
                width: deviceWidth(context) * 0.90,
                // margin: const EdgeInsets.only(top: 350.0),
                child: Text(
                  'One huge difference between workers conducting MH tasks and athletes training in the gym is the purpose of the task; athletes are generating maximal force to improve strength, workers are completing the task to get their job done.',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8), fontSize: 15),
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.03,
              ),
              Container(
                width: deviceWidth(context) * 0.90,
                height: deviceHeight(context) * 0.12,
                // margin: const EdgeInsets.only(top: 350.0),
                decoration: BoxDecoration(
                  color: Color(0xFF444442),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: deviceWidth(context) * 0.20,
                          height: deviceHeight(context) * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFF444442),
                                radius: 10,
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xfff5d20f),
                                  size: 15,
                                ),
                              ),
                              Text('Behaviour',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xfff5d20f),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: deviceWidth(context) * 0.27,
                          height: deviceHeight(context) * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFF444442),
                                radius: 10,
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xfff5d20f),
                                  size: 15,
                                ),
                              ),
                              Text('WorkplaceSafety',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xfff5d20f),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: deviceWidth(context) * 0.17,
                          height: deviceHeight(context) * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFF444442),
                                radius: 10,
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xfff5d20f),
                                  size: 15,
                                ),
                              ),
                              Text('Sport',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xfff5d20f),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
