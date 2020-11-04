import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('kakao T'),
        ),
        body: ListView(
          children: [
            _buildMenuSection(),
            _buildAdSection(),
            _buildNoticeSection(),
          ],
        )
    );
  }


  Widget _buildItem(IconData icon, String title) {
    return Column(
      children: [
        Icon(icon, size: 80,),
        Text(title),
      ],
    );
  }

  Widget _buildMenuSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildItem(Icons.local_taxi, '택시')
      ],
    );
  }

  Widget _buildAdSection() {
    return CarouselSlider(
        items: [
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.blue,),
        ],
      options: CarouselOptions(height: 200.0,
      autoPlay: true,
      autoPlayInterval: Duration(milliseconds: 100)),
    );
  }

  Widget _buildNoticeSection() {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('[이번트] 추석 어쩌고 '),),
      ],
    );
  }
}
