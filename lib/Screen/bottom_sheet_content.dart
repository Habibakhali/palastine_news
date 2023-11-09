import 'package:flutter/material.dart';
import 'package:palastine_news/Style/myTheme.dart';

class BottomSheetContent extends StatelessWidget {
  String title;
  String image;
  String time;
  String name;
  String content;

  BottomSheetContent(this.title,this.time, this.image, this.name, this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(12))
      ),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(image)),
          Text(
            title,
            style: MyTheme.lightMode.textTheme.titleLarge,
          ),
          Row(
            children: [
              Text(name,
                style: MyTheme.lightMode.textTheme.titleSmall?.copyWith(color: MyTheme.greenColor),
              ),
              Spacer(),
              Icon(Icons.access_time,color: Colors.grey, ),
              Text(time,style: MyTheme.lightMode.textTheme.titleSmall,textAlign: TextAlign.end,)
            ],
          ),
          SizedBox(height: 15,),
          Text('$content ')
        ],
      ),
    );
  }
}
