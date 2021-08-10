import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:psyhope/data/music_repo.dart';
import 'package:psyhope/view/components/music_player_box.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  static final String _routeName = '/home-page';

  static String get route {
    return _routeName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'PsyHope'
            .text
            .xl4
            .fontFamily(
              GoogleFonts.roboto(fontWeight: FontWeight.w100).fontFamily!,
            )
            .make()
            .p12()
            .shimmer(
              primaryColor: Vx.purple400,
              secondaryColor: Vx.gray500,
            ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.account_box_rounded,
          color: Vx.blueGray700,
          size: 40,
        ).pLTRB(20, 0, 0, 0),
        actions: [
          Icon(
            Icons.menu_rounded,
            size: 40,
            color: Vx.blueGray900,
          ).pLTRB(0, 0, 20, 0),
        ],
        iconTheme: IconThemeData(color: Colors.green),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              child: CarouselSlider(
                items: musicRepository
                    .map((music) =>
                        MusicPlayerBox(coverImageURL: music.coverImageURL))
                    .toList(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                ),
              ),
            ),
            Directionality(textDirection: TextDirection.rtl, child: Text(""))
          ],
        ),
      ),
    );
  }
}
