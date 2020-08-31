import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseflutterapp/screens/portfolio_screen.dart';
import 'package:firebaseflutterapp/screens/see_all_tournaments.dart';
import 'package:flutter/material.dart';
import 'package:firebaseflutterapp/screens/home_screen.dart';
import 'package:firebaseflutterapp/screens/identification.dart';
import 'package:firebaseflutterapp/screens/see_all_teams.dart';

import 'package:firebaseflutterapp/screens/note_screen.dart';
import 'package:firebaseflutterapp/screens/see_all_players.dart';
import 'package:firebaseflutterapp/screens/heroes_page.dart';

void main() => runApp(MaterialApp(
    routes:{
      '/': (context) => HomeScreen(),
      '/Identification': (context) => Dotes(),
      '/SeeAllTeams': (context) => Team(),
      '/SeeAllTournaments': (context) => Tournament(),
      '/DotaScreen': (context) => HeroesPage(),
      '/Notes' : (context) => Notes(),
      '/PortfolioScreen' : (context) => PortfolioScreen(),
      '/SeeAllPlayers' : (context) =>  Player(),

    }
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dota 2 Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor:  Colors.black,
        scaffoldBackgroundColor: Colors.grey,
      ),

    );
  }
}