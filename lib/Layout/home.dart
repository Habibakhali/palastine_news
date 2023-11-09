import 'package:flutter/material.dart';
import 'package:palastine_news/Model/NewsDataModel.dart';
import 'package:palastine_news/Screen/news_data.dart';
import 'package:palastine_news/Shared/Network/Remote/api_manager.dart';
import 'package:palastine_news/Style/myTheme.dart';
import 'package:palastine_news/Screen/tab_item.dart';

class HomeScreen extends StatefulWidget {
  static const String routreName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<String> sourses = ['Top News', 'Gaza', 'Al-Aqsa Mosque'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/pattern.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Palatine News'),
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DefaultTabController(
              length: 3,
              child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  onTap: (index) {
                    selectedIndex = index;
                    setState(() {});
                  },
                  tabs: sourses
                      .map((e) =>
                          TabItem(e, sourses.indexOf(e) == selectedIndex))
                      .toList()),
            ),
            FutureBuilder<NewsDataModel>(
                future: ApiManger.getNews(sourses[selectedIndex]),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting)
                    return Expanded(
                        child: Center(
                            child: CircularProgressIndicator(
                      color: MyTheme.greenColor,
                    )));
                  if (snapshot.hasError) return Text('error');
                  if (snapshot.data!.status != 'ok') return Text('error');
                  var data = snapshot.data!.articles ?? [];
                  return Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return NewsItem(
                            data[index].urlToImage,
                            data[index].title,
                            data[index].description,
                            data[index].source!.name,
                            data[index].publishedAt!.substring(0, 10));
                      },
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
