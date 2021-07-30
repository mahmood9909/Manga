import 'package:flutter/material.dart';

class RecomendationsItem extends StatelessWidget {
  final String image;
  final String mangaTitle;
  final int chapters;

  const RecomendationsItem(
      {required this.image, required this.mangaTitle, required this.chapters});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                height: 280,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                )),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.black54,
                ),
                width: 180,
                height: 50,
                child: Center(
                  child: Text(
                    mangaTitle,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
