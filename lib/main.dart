import 'package:flutter/material.dart';
import 'package:youtube/appbar.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube UI',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget showVideo(String imageName, String time, String title) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(imageName),
            Positioned.fill(
              right: 5.0,
              bottom: 5.0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "$time",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 5.0),
        Container(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/pp.jpg'),
            ),
            title: Text(
              "$title",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Gamer Cool · 500K Views · 4 Months ago',
              style: TextStyle(color: Colors.white60),
            ),
            trailing: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar,
      bottomNavigationBar: bottomAppBar,
      body: SingleChildScrollView(
          child: Column(
        children: [
          showVideo(
              'images/thumb0.jpg', '10:40', 'Fortnite New Season 9 is cool.'),
        ],
      )),
    );
  }
}
