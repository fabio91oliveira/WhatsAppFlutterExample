import 'package:flutter/material.dart';
import 'package:whatsapp_flutter_app/pages/calls_screen.dart';
import 'package:whatsapp_flutter_app/pages/camera_screen.dart';
import 'package:whatsapp_flutter_app/pages/chat_screen.dart';
import 'package:whatsapp_flutter_app/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  void _showSnackBar(String message) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text("Open chat was clicked")));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "Calls".toUpperCase()),
            new Tab(text: "Status".toUpperCase()),
            new Tab(text: "Calls".toUpperCase())
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
          new Icon(Icons.more_vert),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5))
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => _showSnackBar("Open Chat was clicked!"),
      ),
    );
  }
}
