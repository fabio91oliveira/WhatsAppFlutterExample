import 'package:flutter/material.dart';
import 'package:whatsapp_flutter_app/whatsapp_home.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  static const String _titleApp = "WhatsApp";
  static const int _primaryColor = 0xff075E54;
  static const int _accentColor = 0xff25D366;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: _titleApp,
        theme: new ThemeData(
            primaryColor: new Color(_primaryColor),
            accentColor: new Color(_accentColor)),
        home: Scaffold(
          body: WhatsAppHome(),
        ));
  }
}
