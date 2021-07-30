import 'package:flutter/material.dart';

class NewEpisode extends StatelessWidget {
  final String image;
  final String managTitle;
  final int chapters;
  const NewEpisode(
      {required this.image, required this.managTitle, required this.chapters});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LayoutBuilder(builder: (context, constraints) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 150,
            decoration: BoxDecoration(
                color: Color(0xff212121),
                borderRadius: BorderRadius.circular(10)),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          child: FittedBox(
                            child: Text(
                              managTitle,
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: FittedBox(
                            child: Text(
                              '$chapters',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white54),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        })
      ],
    );
  }
}
