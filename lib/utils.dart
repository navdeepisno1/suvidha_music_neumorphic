import 'package:flutter/material.dart';
import 'package:suvidha_music/colors.dart';

class CustomAppBar {
  static Widget getAppBar() {
    return Row(
      children: [
        _createSoftContainer(Icon(Icons.arrow_back)),
        Expanded(
          child: Text(
            'Now Playing',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        _createSoftContainer(Icon(Icons.more_horiz))
      ],
    );
  }

  static Widget _createSoftContainer(Widget child) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: kBottomShadowColor,
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 3),
              ),
              BoxShadow(
                color: kTopShadowColor,
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(-6, -3),
              )
            ]),
        child: child);
  }
}

class AlbumImage {
  static Widget getAlbumImage(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              border: Border.all(color: kPrimaryColor, width: 10),
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height / 3.5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://i.scdn.co/image/ab67706c0000bebb13d0a20fcd4d9aadd413a2b3'),
              ),
              boxShadow: [
                BoxShadow(
                  color: kBottomShadowColor,
                  spreadRadius: 3,
                  blurRadius: 6,
                  offset: Offset(6, 3),
                ),
                BoxShadow(
                  color: kTopShadowColor,
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(-6, -3),
                )
              ]),
        ),
        SizedBox(
          height: 50,
        ),
        Column(
          children: [
            Text(
              'Demon Slayer',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            Text('Kimetsu Na Yaiba')
          ],
        )
      ],
    );
  }
}

class ProgressBar {
  static Widget getProgressBar(BuildContext context, int progress) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 10,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.grey[400], Colors.white],
                    )),
              ),
              Container(
                height: 10,
                width: size.width * (progress / 100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white70, Colors.grey[400]],
                    )),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('01:00'), Text('06:00')],
            ),
          )
        ],
      ),
    );
  }
}

class ControlPanel {
  static Widget getControlPanel(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _createSoftContainer(Icon(
                Icons.favorite,
                size: 15,
              )),
              _createSoftContainer(Icon(
                Icons.fast_rewind,
                size: 25,
              )),
              _createSoftContainer(Icon(
                Icons.play_arrow,
                size: 40,
              )),
              _createSoftContainer(Icon(
                Icons.fast_forward,
                size: 25,
              )),
              _createSoftContainer(Icon(
                Icons.repeat,
                size: 15,
              ))
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.phonelink_setup),
            ),
          ],
        ),
      ],
    );
  }

  static Widget _createSoftContainer(Widget child) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: kBottomShadowColor,
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(6, 3),
              ),
              BoxShadow(
                color: kTopShadowColor,
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(-6, -3),
              )
            ]),
        child: child);
  }
}
