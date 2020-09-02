import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ScCheck extends StatefulWidget {
  ScCheck({Key key}) : super(key: key);

  @override
  _ScCheckState createState() => _ScCheckState();
}

class _ScCheckState extends State<ScCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salvo Conductos'),
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(
              Icons.star,
              color: Colors.white,
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.blue, Colors.red])),
        ),
      ),
      body: _buildWebView(),
    );
  }

  Widget _buildWebView() {
    return WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl:
            'https://www.validacion.salvoconductos.mici.gob.pa/identificacion',
        gestureNavigationEnabled: true,
        initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow);
  }
}
