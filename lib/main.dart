import 'package:flutter/material.dart';
import 'package:palastine_news/Style/myTheme.dart';
import 'package:palastine_news/layout/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:MyTheme.lightMode,
      initialRoute: HomeScreen.routreName,
      routes: {
        HomeScreen.routreName: (_) => HomeScreen(),
      },
    );
  }
}
