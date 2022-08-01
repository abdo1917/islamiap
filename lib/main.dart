import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';
import 'package:islami/Mytheme.dart';

void main() {
  runApp( Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      routes: {
        HomeScreen.routename : (_) => HomeScreen()
      },
      initialRoute: HomeScreen.routename,
    );
  }
}