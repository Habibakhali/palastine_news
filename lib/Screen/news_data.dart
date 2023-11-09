import 'package:flutter/material.dart';
import 'package:palastine_news/Model/NewsDataModel.dart';
import 'package:palastine_news/Style/myTheme.dart';
import 'package:cached_network_image/cached_network_image.dart';
class NewsItem extends StatelessWidget {
  String? image;
  String? title;
  String? description;
  String? author;
  String? time;

  NewsItem(this.image, this.title, this.description, this.author, this.time);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 5, offset: Offset(0, 10))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          image != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl:image!,
                    height: 180,
                    width: double.infinity,
                    placeholder: (context, _) => Center(child: CircularProgressIndicator(color: MyTheme.greenColor,)),
                    errorWidget: (context, _, error) => Icon(Icons.error),
                  ))
              : Image.asset('assets/images/no_images.png'),
          Text(title ?? "",style: MyTheme.lightMode.textTheme.titleLarge,),
          Text(description ?? ""),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(author ?? "",style: MyTheme.lightMode.textTheme.titleSmall?.copyWith(
                    color: MyTheme.greenColor
                  ),),
                  Text(
                    time ?? "",
                    style: MyTheme.lightMode.textTheme.titleSmall,
                    textAlign: TextAlign.end,
                  )
                ],
              )
        ],
      ),
    );
  }
}
