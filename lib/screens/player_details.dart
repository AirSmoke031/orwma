import 'package:firebaseflutterapp/models/player_model.dart' ;
import 'package:flutter/material.dart';



class PlayerPage extends StatelessWidget {
  final int index;

  PlayerPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center
          (
            child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(

                    floating: true,
                    pinned: false,
                    title: Text('Player Details'),
                    expandedHeight: 305.0,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('${players[index].name}'),
                      background: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('${players[index].imageUrl}'),),
                    ),
                  ),
                  SliverFixedExtentList(
                    itemExtent: 20.00,
                    delegate: SliverChildListDelegate([
                      Text(
                        'PLAYER NAME : ${players[index].name}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'PLAYER NICKNAME : ${players[index].nickname}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'COUNTRY : ${players[index].country}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'TEAM : ${players[index].team}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'PLAYER POSITION : ${players[index].position}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'SIGNATURE HEROES : ${players[index].heroes}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'PLAYER RATING: ${players[index].rating}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'PLAYER EARNINGS : ${players[index].earnings}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'PLAYER MMR : ${players[index].mmr}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  )
                ]
            )
        )
    );
  }
}
