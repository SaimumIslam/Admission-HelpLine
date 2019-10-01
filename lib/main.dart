import './nav/customListTile.dart';
import './nav/drawerHeader.dart';
import './CardView.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
            primarySwatch: Colors.deepPurple,
            primaryColor: Colors.deepPurpleAccent),
        home: new HomePage(),
        );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Admission Help'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            drawerHeader(),
            customListTile(Icons.settings,'Settings',()=>[]),
            customListTile(Icons.security,'Security',()=>[]),
            customListTile(Icons.close,'Close',() => Navigator.pop(context)),
          ],
        ),
      ),
      body: cardHome()
    );
  }
}
TextStyle tileFont() {
  return new TextStyle(
    fontSize: 16.0,
  );
}
