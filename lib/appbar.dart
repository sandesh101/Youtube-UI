import 'package:flutter/material.dart';

AppBar appBar = AppBar(
  backgroundColor: Colors.black,
  title: Image.asset(
    'images/yt_logo_dark.png',
    width: 100.0,
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Icon(Icons.videocam),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Icon(Icons.search),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: CircleAvatar(
        backgroundImage: AssetImage('images/pp.jpg'),
        radius: 15,
      ),
    ),
  ],
);

BottomAppBar bottomAppBar = BottomAppBar(
  color: Colors.black,
  child: Container(
    color: Colors.black,
    height: 55,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            Text(
              'Home',
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    ),
  ),
);
