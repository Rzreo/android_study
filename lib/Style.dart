import 'package:flutter/material.dart';

var _var1; //_를 앞에 붙이면 다른파일에서 접근 불가 (getter로는 빼올 수 있음)

var theme = ThemeData( // 전체적인 공통 스타일 적용
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          backgroundColor: Colors.grey,
      )
  ),
  iconTheme: IconThemeData(color: Colors.black),
  appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 1,
      actionsIconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 25)
  ),
  textTheme: TextTheme(
    bodyText2: TextStyle(color: Colors.black),
    bodyText1: TextStyle(color: Colors.black)
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
  )
);