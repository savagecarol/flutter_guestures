import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Gestures'),
          centerTitle: true,
        ),
        body: new Center(child:GestureDetector(
          onTap: () {
            print('clicked');
          },
            onDoubleTap: () {
            print('double tap');
          },
            
                onLongPress: () {
            print('longpress');
          },

                      onTapCancel: () {
            print('tap cancel');
          },

          child:Container(
            height: 70,
            width: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(15)
            ),
            child:Center(child: Text('click me'))
          )
        
        
        )
        )
        );
  }
}
