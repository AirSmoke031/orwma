import 'package:firebaseflutterapp/screens/chewie_list_item.dart';
import 'package:firebaseflutterapp/widgets/player_carousel.dart';
import 'package:flutter/material.dart';
import 'package:firebaseflutterapp/widgets/destination_carousel.dart';
import 'package:firebaseflutterapp/widgets/hotel_carousel.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          cacheExtent: 1000000.0,
          children: <Widget>[
            Row(
              children: [
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/PortfolioScreen');
                  },
                  icon: Icon(Icons.perm_contact_calendar),
                  label: Text('Portfolio'),
                ),
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Notes');
                  },
                  icon: Icon(Icons.description),
                  label: Text('Notes'),

                ),
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/DotaScreen');
                  },
                  icon: Icon(Icons.description),
                  label: Text('Dota'),

                ),
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Identification');
                  },
                  icon: Icon(Icons.contact_mail),
                  label: Text('ID'),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Dota 2 Guide',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                "videos/Dota.mp4",
              ),
            ),
            SizedBox(height: 20.0),
            DestinationCarousel(),

            SizedBox(height: 20.0),
            HotelCarousel(),
            SizedBox(height: 20.0),
            PlayerCarousel(),
          ],
        ),
      ),

    );
  }
}