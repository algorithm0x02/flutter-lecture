import 'package:flutter/material.dart';
import 'package:flutter_app/ui/first_page.dart';
//import 'package:flutter_app/navigation/first_page.dart';
//import 'package:flutter_app/navigation/second_page.dart';
import 'package:flutter_app/ui/second_page.dart';
import 'package:flutter_app/ui/third_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  //_pages[_index]
  List<Widget> _pages = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    //KakaoPage(),//_pages[1]
   // SecondPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈'
          ),
        ],
        currentIndex: _index,
        onTap: (int value) {
          print('tapped: $value');
          setState(() {
            _index = value;
          });
        },
      ),
    );
  }
}
