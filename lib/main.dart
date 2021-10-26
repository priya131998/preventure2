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
            ],
          ),
        ),
      ),
    );
  }
}
