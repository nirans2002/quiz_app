import 'dart:math';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:quiz_app/components/bottom_sheet.dart';
import 'package:quiz_app/services/api.dart';
import 'package:quiz_app/theme/theme.dart';
// import 'package:quiz_app/components/bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Center(
                  child: Image.asset(
                    'assets/icon/icon.png',
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              SizedBox(
                child: Text(
                  " lore10",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    // showBottomSheet_category(context);
                    show_bottom_sheet_category(context);
                  },
                  child: Text(
                    "Start Quiz",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              element(),
            ],
          ),
        ),
      ),
    );
  }
}

class element extends StatelessWidget {
  const element({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: max(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      height: 500,
      borderRadius: 20,
      blur: 20,
      alignment: Alignment.bottomCenter,
      border: 2,
      linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFffffff).withOpacity(0.1),
            Color(0xFFFFFFFF).withOpacity(0.05),
            Color(0xFFF7F7F7).withOpacity(0.05),
          ],
          stops: [
            0.1,
            1,
          ]),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFffffff).withOpacity(0.5),
          Color((0xFFFFFFFF)).withOpacity(0.5),
        ],
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: new Icon(Icons.photo),
            title: new Text('Photo'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: new Icon(Icons.music_note),
            title: new Text('Music'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: new Icon(Icons.videocam),
            title: new Text('Video'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: new Icon(Icons.share),
            title: new Text('Share'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
