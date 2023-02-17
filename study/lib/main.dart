import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('MainPage'),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Colors.black,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: 300.0,
        height: 300.0,
        alignment: Alignment.bottomCenter,
        child: FlutterLogo(size: 100),
      ),
    );
  }
}
