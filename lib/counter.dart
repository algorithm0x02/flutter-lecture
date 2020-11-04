import 'package:flutter/material.dart';

class Counter1 extends StatefulWidget {
  @override
  _Counter1State createState() => _Counter1State();
}

class _Counter1State extends State<Counter1> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    //var count = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('카운터'),
      ),
      body: Center(
        child: Text(
          '$count',
          style: TextStyle(fontSize: 80),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: (){
        //   print('클릭');
        //   setState(() {
        //     count++;
        //   },
        //   );
        // },
        child: Icon(Icons.add),
        onPressed: (){
          print('클릭');
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
