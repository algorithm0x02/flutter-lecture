import 'package:flutter/material.dart';

class KakaoPage extends StatelessWidget {
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
    return ListTile(
      leading: Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.crowdpic.net%2Fphoto%2F%25EB%2585%25B8%25EC%259D%2584-%25ED%2595%2598%25EB%258A%2598-%25EC%258B%259C%25EA%25B3%25A8-%25EC%258B%259C%25EA%25B3%25A8%25ED%2592%258D%25EA%25B2%25BD-%25ED%2592%258D%25EA%25B2%25BD-83639&psig=AOvVaw3oGo_C-RP0vFX8COAQ5cOw&ust=1604382763726000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNiLzdaV4-wCFQAAAAAdAAAAABAO',
      width: 50,
      height: 50,
      fit: BoxFit.cover,
      ),

    );
  }
}

class User {
  String name;
  int age;

  User(this.name, {this.age});
}

