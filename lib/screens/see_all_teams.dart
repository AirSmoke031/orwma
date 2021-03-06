import 'package:firebaseflutterapp/models/team_model.dart';
import 'package:flutter/material.dart';
import 'package:firebaseflutterapp/screens/team_details.dart';
class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}
class _TeamState extends State<Team> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('All Teams'),
        centerTitle: true,
        elevation: 0,
      ),
       body: ListView.builder(
         itemCount: Teams.length,
         itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1,),
            child: Card(
             child: ListTile(
               subtitle: Text('${Teams[index].address}'),
               trailing: Icon(Icons.arrow_forward),
              onTap: () {
                 Navigator.push(
                     context,MaterialPageRoute(builder: (context) => DetailPage(index),)
                 );

              },
              title: Text(Teams[index].name),
               leading: CircleAvatar(
                 radius: 35.0,
                 backgroundImage: AssetImage('${Teams[index].imageUrl}'),
               ),
            ),
            ),
          );
       }
       ),
     );
  }
}