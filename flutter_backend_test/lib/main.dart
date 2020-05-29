import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_backend_test/splashscreen.dart';
void main()
{
  runApp(
    MaterialApp(
      home: MyApp1(),
      debugShowCheckedModeBanner: false,
    )
  );
}

class MyApp1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
      seconds:3
    ),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyApp(),),);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
          FlutterLogo(
        size: 400,
      ),
      new Text(
        'Powered by SRB',
         softWrap: true,
        textAlign: TextAlign.center,
        style: new TextStyle(
          fontSize: 18,
          color: Colors.white,
          decoration: TextDecoration.none
        ),
        ),
      ],
      

    );
  }
}




