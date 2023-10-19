import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
static const String routreName='homeScreen';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/pattern.png'),
        fit: BoxFit.cover
        ),
      ),
    child: Scaffold(
      appBar: AppBar(
        title: Text('Palatine News'),
        shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
        ),
      ),
      backgroundColor: Colors.transparent,
    ),
    );
  }
}
