import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int count = 0;

  void _counterMais() {
    setState(() {
      count++;
      print(count);
    });
  }

  void _counterMenos() {
    setState(() {
      count--;
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Contador'),
        centerTitle: true,
        backgroundColor: Colors.pink.shade300,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Meu Contador',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.pink.shade400,
                )),
            Text(
              '$count',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.pink,
              ),
            ),
            ElevatedButton(
              child: Text('+'),
              onPressed: _counterMais,
              style: ElevatedButton.styleFrom(
                  primary: Colors.pink.shade300,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            ElevatedButton(
              child: Text('-'),
              onPressed: _counterMenos,
              style: ElevatedButton.styleFrom(
                  primary: Colors.pink.shade300,
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
