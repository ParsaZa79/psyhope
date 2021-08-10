import 'package:flutter/material.dart';

class MusicPlayerBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
                spreadRadius: 2.5,
                offset: Offset(10.0, 10.0),
              ),
            ],
            image: DecorationImage(
              image: AssetImage('assets/images/music-sample-one.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
