import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BonoCheck extends StatefulWidget {
  BonoCheck({Key key}) : super(key: key);

  @override
  _BonoCheckState createState() => _BonoCheckState();
}

class _BonoCheckState extends State<BonoCheck> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bono Solidario'),
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
      'https://vale.panamasolidario.gob.pa/vale/',
    );
  }
}
