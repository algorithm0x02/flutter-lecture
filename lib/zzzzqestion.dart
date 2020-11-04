import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  List<User> _items = [
    User("홍길동",age: 30),
    User("홍길동",age: 20),
    User("홍길동",age: 50),
    User("홍길동",age: 50),
    User("홍길동",age: 50),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
        actions: [
          IconButton(icon: Icon(Icons.info), onPressed: () {}),
          TextButton(child: Text('button'), onPressed: () {})
        ],
      ),
      body: _buildBody(),
      //Center(child: Text('3')),
    );
  }

  Widget _buildBody(){
    //final result =_items.map((user) => _buildItem(user)).toList();

    return ListView(
      children: _items.map((user) => _buildItem(user)).toList(),
    );
  }

  Widget _buildItem(User user){

    return Row(
      children: [
        Image.network('https://cdn.crowdpic.net/detail-thumb/thumb_d_A175A8EE60E76F315D7C02F85C3B5D01.jpg',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        Padding( // 여기에 extendid
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(user.name),
              Text('${user.age}'),
            ],
          ),
        ),
        Text('시간'),
      ],
    );
  }
}

class User {
  String name;
  int age;

  User(this.name, {this.age});
}

