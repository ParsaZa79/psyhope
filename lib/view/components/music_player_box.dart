import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MusicPlayerBox extends StatelessWidget {
  final String? title, coverImageURL;

  MusicPlayerBox({this.title, @required this.coverImageURL});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 75,
          height: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[350]!,
                blurRadius: 2.0,
                spreadRadius: 2.0,
                offset: Offset(1.0, 4.0),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(coverImageURL!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Icon(
          Icons.play_circle_fill_sharp,
          size: 75,
          color: Colors.grey[200],
        ),
      ],
    );
  }
}
