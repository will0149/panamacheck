import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class BonoCheck extends StatefulWidget {
  BonoCheck({Key key}) : super(key: key);

  @override
  _BonoCheckState createState() => _BonoCheckState();
}

class _BonoCheckState extends State<BonoCheck> {
  final url = 'https://vale.panamasolidario.gob.pa/vale/';
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
    return WebviewScaffold(
      url: url,
      withLocalStorage: false,
      withJavascript: true,
      withLocalUrl: true,
    );
  }
}
