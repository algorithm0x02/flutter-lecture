import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //안드로이드 스타일
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeePage() //2. 이곳에 홈페이지 추가 // HomeePage로 분리를 해준 것이다.
    );
  }
}

//4. 단축키: 한줄 지우기 : 컨트롤 Y

class HomeePage extends StatelessWidget {
  // 화면 만들기
  // 1. stless 를 치고 엔터 / 화면 구성하는 아이
  @override
  Widget build(BuildContext context) {
    //return Container(); // 3. 빈 위젯 / 까만 화면이 나온다/ nell 리턴하면 죽어서 아무거나 리턴하는 라인이다.
    //return Text('hello'); // 3-1. 홑따음포가 정식이다.
    return Scaffold(
      //3-2. 바탕이 하얗게 나온다. Materia 디자인의 기본 세팅/ 하얀 바탕에 파랑색 버튼
        appBar: AppBar(
          // 3-3. Scaffold안에 AppBar라는 속성/ 파란 바가 상단에 생긴다
          title: Text(
              'hello'), //4. 컨트롤 스페이스를 누르면 필요한것들이 나온다. 4.2 텍스트를 넣고 싶으면 꼭 위젯(택스트)를 넣어줘야 한다.
        ),
        //AppBar라는 주석이 생긴다. 끝난다는걸 알려준다. 나중에 찾을때 유용하다. 보이기만 보이고 실제로 생긴건 아니다.
        //body: Text('hello'), // 3-4. Materia스타일의 텍스트가 생긴다. //4.3 이제 여기 바디 부분에 추가를 하면 된다.
        //body: Center( // 5. 가운데에 만든다. center로 감싼다.
        //  child: Text('Hello World'), // 5.1 실제로 표시되는 아이들을 이곳에 child로 넣어준다.
        body: TitleSection() //
      //Center(child: Text('hello')), //5.2 알트 엔터를 하면 여러 추가 옵션들이 생긴다.
      //6. 단축키: 코드 룰에 맞추어서 처리: 컨트롤 알트 L (라인 마지막에 콤파를 찍으면 항상 자동 줄 바꿈)
    );
  }
}


class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // 사방에 16을 먹이는 패팅
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // 7.5 상단으로 다 붙이기
        children: [
          Expanded(
            // 7.4 컨트롤 알트로 위젯을 먼저 선택한 다음에 Expanded로 바꾸어 준다.
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //7. 왼쪽 정렬, crossAxisAlignment 안에 CrossAxisAlignment[점]옵션 을 선택 할 수 있다
              children: [
                //7. 대괄호는 리스트 같은 느낌 / 많이 들어가서 대 괄호를 사용한다.
                Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ), //7.3 별 모양 아이콘
          Text('41'), //7.4 텍스트
        ],
      ),
    );

  }
}
