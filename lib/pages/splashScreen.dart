import 'dart:async';

import 'package:flutter/material.dart';
import 'package:panamacheck/pages/scCheck.dart';

import 'colorLoader.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(milliseconds: 1500);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ScCheck(),
        ));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Container(
//              child: Image.asset("images/logo.png"),
//            ),
//            Padding(padding: EdgeInsets.only(top: 20.0)),
//            Text(
//              "Splash Screen",
//              style: TextStyle(
//                  fontSize: 20.0,
//                  color: Colors.white
//              ),
//            ),
//            Padding(padding: EdgeInsets.only(top: 20.0)),
            ColorLoader(),
          ],
        ),
      ),
    );
  }
}
