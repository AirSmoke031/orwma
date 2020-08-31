import 'package:firebaseflutterapp/models/destination_model.dart';
import 'package:firebaseflutterapp/screens/tournament_details.dart';
import 'package:flutter/material.dart';
import 'package:firebaseflutterapp/screens/team_details.dart';
class Tournament extends StatefulWidget {
  @override
  _TournamentState createState() => _TournamentState();
}
class _TournamentState extends State<Tournament> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('All Tournaments'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: destinations.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1,),
              child: Card(
                child: ListTile(
                  subtitle: Text('${destinations[index].country}'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                        context,MaterialPageRoute(builder: (context) => TournamentPage(index),)
                    );

                  },
                  title: Text(destinations[index].name),
                  leading: CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('${destinations[index].imageUrl}'),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}