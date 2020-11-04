import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카운터'),
      ),
      body: Center(
        child: Column(children: [
          TextSection(),
          //ActionButton(),
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //log
          print('ckick');
        },
        child: Icon(Icons.add),
    ),//Text('hello'),
    );
  }

  ActionButton() {}
}

class TextSection extends StatefulWidget{
  @override
  _TextSectionState createState() => _TextSectionState();
}

//class _Countter

class _TextSectionState extends State<TextSection> {
  @override
  Widget build(BuildContext context) {
    int count = 1;
    return
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('$count'),
      ],
    );

    throw UnimplementedError();
  }
}
