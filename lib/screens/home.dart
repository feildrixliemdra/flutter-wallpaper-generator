import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Wallpaper',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Gen',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
              labelText: 'Search Image',
              labelStyle: TextStyle(fontSize: 20.0),
              suffixIcon: Icon(Icons.search)),
        ),
      ),
    );
  }
}
