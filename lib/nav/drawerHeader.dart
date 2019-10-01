import 'package:flutter/material.dart';

class drawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[Colors.deepPurple, Colors.deepPurpleAccent]),
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.all(Radius.circular(48.0)),
                elevation: 10.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'images/ku.png',
                    width: 80.0,
                    height: 80.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Admission',
                  style: headerFont(),
                ),
              )
            ],
          ),
        ));
  }
}

TextStyle headerFont() {
  return new TextStyle(
    fontSize: 16.0,
    color: Colors.white,
  );
}
