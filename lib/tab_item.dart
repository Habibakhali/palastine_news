import 'package:flutter/material.dart';
import 'package:palastine_news/Style/myTheme.dart';

class TabItem extends StatelessWidget {
String sources;
bool selected;
TabItem(this.sources,this.selected);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border.all(color: MyTheme.greenColor),
        borderRadius: BorderRadius.circular(25),
        color: selected?MyTheme.greenColor:Colors.white
      ),
      child: Text(sources,style: TextStyle(color: selected?Colors.white:MyTheme.greenColor),),
    );
  }
}
