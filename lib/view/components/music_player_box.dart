import 'package:flutter/material.dart';

class MusicPlayerBox extends StatelessWidget {
  final String? title, coverImageURL;

  MusicPlayerBox({this.title, @required this.coverImageURL});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                offset: Offset(0.25, 4.0),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(coverImageURL!),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
