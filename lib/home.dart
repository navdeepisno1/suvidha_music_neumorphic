import 'package:flutter/material.dart';
import 'package:suvidha_music/utils.dart';
import 'colors.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              CustomAppBar.getAppBar(),
              SizedBox(
                height: 60,
              ),
              AlbumImage.getAlbumImage(context),
              SizedBox(
                height: 30,
              ),
              ProgressBar.getProgressBar(context, 70),
              SizedBox(
                height: 30,
              ),
              ControlPanel.getControlPanel(context)
            ],
          ),
        ),
      ),
    );
  }
}
