import 'package:flutter/material.dart';
import './Style.dart' as style; //스타일 밖으로 빼기 as로 작명

void main() {
  runApp(
    MaterialApp(
      theme: style.theme,
      home : MyApp()
    )
  );
}

var a = TextStyle();
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tab = 0; //텝의 state


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: (){},
            iconSize: 30,
          )
        ],
        title: Text('Instagram'),
      ),
      /*
      body: Theme( //부모스타일과는 다른 스타일 적용(나랑 가까운 스타일을 먼저 적용
          data:  ThemeData(

          ),
          child: Container()),
       */
      body: [MyPost(),Text('상점페이지')][tab],
      //Text('안녕', style: Theme.of(context).textTheme.bodyText2,),//theme을 찾아 그 안에 있던 textTheme안의 bodyText2 적용
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (i){
          setState(() {
            tab = i;
          });
        },//onPressed와 동일
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: '샾'),
        ],
      )
    );
  }
}

class MyPost extends StatefulWidget {
  const MyPost({super.key});

  @override
  State<MyPost> createState() => _MyPostState();
}

var post = SizedBox(
  child: Column(
    children: [
      Image.asset('myassets/images/cat.jpg',fit: BoxFit.fitWidth,),
      Container(
        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Column(
          crossAxisAlignment : CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('좋아요 '),
                Text('100')
              ],
            ),
            Text('글쓴이', textAlign: TextAlign.left,),
            Text('글내용', textAlign: TextAlign.left,),
          ],
        )
      ),
    ],
  ),
);

class _MyPostState extends State<MyPost> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int idx)
        {
          return post;  
        });
  }
}

//종적인 UI만들기
//1.state에 UI현재 상태 저장
//2.state에 따라 tab이 어떻게 보일지 작성
//3.state 조작할 수 있게 기능 만들기
