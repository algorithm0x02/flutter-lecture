import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String name;

  SecondPage(String name) {
    this.name = name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 전환 $name'),
      ),
      body: Column(
        children: [
          //그냥 닫기
          //Navigator.pop(context, 'hello world');

          //ㅏㄱㅄ돌려주기
          ElevatedButton(onPressed: () {Navigator.pop(context, 'hello world');}, child: Text('닫기'),)
        ],
      ),
    );
  }
}