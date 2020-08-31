import 'package:firebaseflutterapp/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String name;
  String names;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.name,
    this.names,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/royal_palace.jpg',
    name: 'The Royal Palace',
    type: ' Slottsbacken 1, 111 30 Stockholm',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 5,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/djurgarden_bred.jpg',
    name: 'Djurgarden',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/stockholm-skansen.jpg',
    name: 'Skansen',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/sweden.jpg',
    name: 'The International 2020',
    city: 'Stockholm',
    country: 'Sweden',
    description: 'The International 2020 is the concluding tournament of the Dota Pro Circuit and the tenth annual edition of The International which returns to Europe for the first time since 2011. The tournament will be held in Stockholm, Sweden. Following the previous year format, a point system based on official sponsored Majors and Minors will be used to determine the teams invited to The International.Tournament was originally scheduled to take place in Sweden Stockholm, Sweden, from August 18th to 23rd. In light of the threat posed by the 2019–20 Coronavirus Pandemic, Valve delayed the event on April 30th.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/lamajor.jpg',
    name: 'LA Major',
    city: 'Los Angeles',
    country: 'USA',
    description: 'ESL One Los Angeles 2020 was planned to be the third major of the 2019/20 Dota Pro Circuit season.Tournament was originally scheduled to take place in United States Los Angeles, California, from March 15th to 22nd before being postponed by ESL on March 12th due to the 2019–20 Coronavirus Pandemic, a new location and time will be determined. The tournament has been divided into online leagues.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/epicenter.jpg',
    name: 'EPICENTER Major',
    city: 'Moscow',
    country: 'Russia',
    description: 'EPICENTER Major 2020 is the fourth major of the 2019/20 Dota Pro Circuit season.Tournament was originally scheduled to take place in Russia Moscow, Russia, from May 2nd to 10th. In light of the threat posed by the 2019–20 Coronavirus Pandemic, Valve cancelled the event on March 15th.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/dota_2_major_kuala_lumpur.jpg',
    name: 'Kuala Lumpur Major',
    city: 'Kuala Lumpur',
    country: 'Malaysia',
    description: 'The Kuala Lumpur Major will be the first Major of the 2018/19 season and PGLs 6th overall Major. The event will see 16 teams from across the globe competing for 1,000,000 USD and valuable DPC points for The International 2019 in early November 2018. In collaboration with the eGG Network and ImbaTV, the main event will be hosted at the Axiata Arena, in Kuala Lumpur, Malaysia, from 16 to 18 November, 2018.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/PGL_Bucharest.jpg',
    name: 'PGL Bucharest Major',
    city: 'Bucharest',
    country: 'Romania',
    description: 'The Bucharest Major will be PGLs fourth Major and their second tournament of Valves Dota Pro Circuit. The event will be held in March 2018 at the Polyvalent Hall in Bucharest, Romania, where sixteen teams will compete for their chance at the 1,000,000 USD prize pool and 1,500 DPC points.',
    activities: activities,
  ),
];