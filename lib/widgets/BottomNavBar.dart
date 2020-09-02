
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';
import 'package:panamacheck/pages/scCheck.dart';
import 'package:panamacheck/pages/bonoCheck.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 1;
  GlobalKey _bottomNavigationKey = GlobalKey();

  final ScCheck _home = ScCheck();
  final BonoCheck _credits = BonoCheck();

  Widget _showPage = new ScCheck();

  Widget _pageChooser(int page) {
    switch (page) {
      case 1:
        return _home;
        break;

      case 2:
        return _credits;
        break;

      default:
        return new Container(
          child: new Center(
            child: Text('No page found by page chooser'),
          ),
        );
    }
  }

  void shareApp() {
    Share.share('Verificate con esta aplicación https://play.google.com/store/apps/details?id=com.JLD_Dev.panamacheck',
        subject: 'Aplicación para validación de bono y salvo conductos de forma mas cómoda Panamá');
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _page,
        height: 50.0,
        items: <Widget>[
          IconButton(
            icon: Icon(Icons.share, size: 30, color: Colors.white),
            onPressed: shareApp,
          ),
          Icon(Icons.check_circle, size: 30, color: Colors.white),
          Icon(Icons.card_giftcard, size: 30, color: Colors.white),
        ],
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.blueAccent,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 200),
        onTap: (index) {
          if (index != 0) {
            setState(() {
              _showPage = _pageChooser(index);
            });
          }
        },
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: _showPage,
        ),
      ),
    );
  }
}
