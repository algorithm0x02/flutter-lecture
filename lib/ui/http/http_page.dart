import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HttoPage extends StatefulWidget {
  @override
  _HttoPageState createState() => _HttoPageState();
}

class _HttoPageState extends State<HttoPage> {
  String result = '값없음';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http'),
      ),
      body: Container(
        child: Text(result),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.send),

      ),
    );
  }
}
