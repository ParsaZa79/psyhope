import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MusicPlayerBox extends StatefulWidget {
  final String? title, coverImageURL;
  final bool? playStatus;

  MusicPlayerBox({this.title, @required this.coverImageURL, this.playStatus});

  @override
  _MusicPlayerBoxState createState() => _MusicPlayerBoxState();
}

class _MusicPlayerBoxState extends State<MusicPlayerBox> {
  bool? get _isPlayedGetter => widget.playStatus ?? false;
  bool? _isPlayed;
  @override
  void initState() {
    super.initState();
    _isPlayed = _isPlayedGetter!;
  }

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
              image: AssetImage(widget.coverImageURL!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Icon(
          (!_isPlayed!)
              ? Icons.play_circle_fill_sharp
              : Icons.pause_circle_filled_sharp,
          size: 75,
          color: Color.fromRGBO(250, 250, 250, 0.5),
        ).onTap(() {
          setState(() {
            _isPlayed = !_isPlayed!;
          });
        }),
      ],
    );
  }
}
