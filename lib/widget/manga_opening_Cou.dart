import 'package:chechandtest/main.dart';
import 'package:flutter/material.dart';
import '../dummyData.dart';

class ManaCoursor extends StatelessWidget {
  final String image;
  final String mangaTitle;
  final int duration;
  ManaCoursor(
      {required this.image, required this.mangaTitle, required this.duration});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover)),
          ),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              mangaTitle,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
