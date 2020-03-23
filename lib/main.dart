import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/home_screen.dart';

void main() => runApp(MyApp());

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: hexToColor("#1da1f2"),
        accentColor: hexToColor("#aab8c2"),
        scaffoldBackgroundColor: hexToColor("#15202b"),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
