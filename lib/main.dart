import './widget/new_episode.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:chechandtest/dummyData.dart';
import 'package:chechandtest/recomndtions_item.dart';
import 'package:chechandtest/widget/manga_opening_Cou.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MangaList());
  }
}

class MangaList extends StatefulWidget {
  @override
  _MangaListState createState() => _MangaListState();
}

class _MangaListState extends State<MangaList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        centerTitle: true,
        title: Text("Manga",
            style: TextStyle(
              color: Colors.red,
            )),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            //let's start by building our carousel slider
            children: [
              Text(
                "Famous Manga Series",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 0.9,
                  height: 250.0,
                  enlargeCenterPage: true,
                ),
                items: ManagList.map((mangaDetails) {
                  return ManaCoursor(
                    image: mangaDetails.mangaUrl,
                    mangaTitle: mangaDetails.managatitle,
                    duration: mangaDetails.chapters,
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recomendation",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward,
                        size: 35,
                        color: Colors.red,
                      ))
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 280.0,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: MnagPostersRecommendations.map(
                      (recommndationDetails) => RecomendationsItem(
                            image: recommndationDetails.mangaUrl,
                            mangaTitle: recommndationDetails.managatitle,
                            chapters: recommndationDetails.chapters,
                          )).toList()

                  //let's create a new custom widget for our list item
                  ,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Episode",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward,
                        size: 35,
                        color: Colors.red,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ...MnagNewEpisode.map((details) => NewEpisode(
                    managTitle: details.managatitle,
                    image: details.mangaUrl,
                    chapters: details.chapters,
                  )).toList()
            ],
          ),
        ),
      ),
    );
  }
}
