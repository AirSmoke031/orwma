import 'package:firebaseflutterapp/models/destination_model.dart';
import 'package:flutter/material.dart';

class TournamentPage extends StatelessWidget {
  final int index;

  TournamentPage(this.index);

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
                    title: Text('Tournament Details'),
                    expandedHeight: 305.0,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('${destinations[index].name}'),
                      background: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('${destinations[index].imageUrl}'),),
                    ),
                  ),
                  SliverFixedExtentList(
                    itemExtent: 50.00,
                    delegate: SliverChildListDelegate([

                      Text(
                        'TOURNAMENT NAME : ${destinations[index].name}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'TOURNAMENT LOCATION : ${destinations[index].city}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'TOURNAMENTS COUNTRY : ${destinations[index].country}',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        'DESCRIPTION :${destinations[index].description}',
                        overflow: TextOverflow.visible,
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
