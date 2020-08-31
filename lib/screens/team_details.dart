import 'package:firebaseflutterapp/models/team_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;

  DetailPage(this.index);

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
                    title: Text('Team Details'),
                    expandedHeight: 305.0,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('${Teams[index].name}'),
                      background: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('${Teams[index].imageUrl}'),),
                    ),
                  ),
                 SliverFixedExtentList(
                   itemExtent: 20.00,
                   delegate: SliverChildListDelegate([
                        Text(
                           'TEAM NAME : ${Teams[index].name}',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                           ),
                       SizedBox(height: 10.0),
                       Text(
                         'TEAM LOCATION : ${Teams[index].address}',
                         style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                       ),
                     ),
                       SizedBox(height: 10.0),
                       Text(
                         'TEAM PRIZE WINNINGS : ${Teams[index].price}',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                       ),
                     ),
                       SizedBox(height: 10.0),
                       Text(
                         'TEAM REGION : ${Teams[index].region}',
                         style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                       ),
                     ),
                      SizedBox(height: 10.0),
                      Text(
                         'LINEUP : ${Teams[index].lineup}',
                         style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                      ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        height: 400.0,
                        width: 300.0,
                        child: Column(
                          children : <Widget> [
                            Flexible(
                              child: Text(
                               'TEAM SPONSORS : ${Teams[index].sponsors}',
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                           ),
                         ),
                            ),
                        ]
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
