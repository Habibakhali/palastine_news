import 'package:flutter/material.dart';

class MyTheme{
  static const greenColor=Color.fromRGBO(57, 165, 82, 1.0);
  static ThemeData lightMode=ThemeData(
      primaryColor: greenColor,
      appBarTheme: AppBarTheme(
          backgroundColor: greenColor
      )
  );
}