import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preventure',
      //add a background color
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF444442)),
      home: MyHomePage(title: 'Preventure'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
    deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
    return Scaffold(
      //Add an app bar
      appBar: AppBar(
        backgroundColor: Color(0xfff5d20f),
        title: Text(
          widget.title,
          style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: deviceHeight(context) * 0.05,
              ),
              //profile name
              Container(
                width: deviceWidth(context) * 0.90,
                child: Text(
                  'Hi John Doe',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 25),
                ),
              ),
              Container(
                width: deviceWidth(context) * 0.90,
                child: Text(
                  'you have viewed ' '$_counter ' 'of 10 videos',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 18),
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.05,
              ),
              buildCard1(),
              buildCard2(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  //first item
  Card buildCard1() {
    //add an image
    var cardImage = NetworkImage(
        'https://storage.googleapis.com/artifacts.test-dashboard-e0a76.appspot.com/news-feed/article1.png');
    //add a title below the image
    var supportingText = 'Assumptions we make about risk';
    return Card(
      //add shadow
      elevation: 10.0,
      margin: EdgeInsets.fromLTRB(18, 0, 18, 16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            height: 200.0,
            child: Ink.image(
              image: cardImage,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              supportingText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          ButtonBar(
            children: [
              TextButton(
                child: Text(
                  'WATCH LATER',
                  style: TextStyle(
                    color: Color(0xfff5d20f).withOpacity(1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {/* ... */},
              ),
            ],
          )
        ],
      ),
    );
  }

  Card buildCard2() {
    //add a title below the placeholder
    var supportingText =
        'Correlations between manual handling training and sports training';
    return Card(
      //add shadow
      elevation: 10.0,
      margin: EdgeInsets.fromLTRB(18, 0, 18, 16),
      child: Column(
        children: [
          Container(
            child: Placeholder(),
            padding: EdgeInsets.all(10.0),
            height: 200.0,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              supportingText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          ButtonBar(
            children: [
              TextButton(
                child: Text(
                  'WATCH LATER',
                  style: TextStyle(
                    color: Color(0xfff5d20f).withOpacity(1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {/* ... */},
              ),
            ],
          )
        ],
      ),
    );
  }
}
