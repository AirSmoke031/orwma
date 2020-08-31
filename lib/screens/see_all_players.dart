import 'package:firebaseflutterapp/models/player_model.dart';
import 'package:flutter/material.dart';
import 'package:firebaseflutterapp/screens/player_details.dart';

class Player extends StatefulWidget {
  @override
  PlayerState createState() => PlayerState();
}
class PlayerState extends State<Player> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('All Players'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: players.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1,),
              child: Card(
                child: ListTile(
                  subtitle: Text('${players[index].name}'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                        context,MaterialPageRoute(builder: (context) => PlayerPage(index),)
                    );

                  },
                  title: Text(players[index].nickname),
                  leading: CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage('${players[index].imageUrl}'),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}