import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebaseflutterapp/models/posts_model.dart';
import 'package:firebaseflutterapp/components/hero_tile.dart';
import 'package:firebase_database/firebase_database.dart';

class HeroesPage extends StatefulWidget {
  HeroesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HeroesPageState createState() => _HeroesPageState();
}

class _HeroesPageState extends State<HeroesPage> {
  DatabaseReference heroesRef;
  String sortingMethod = 'name';

  @override
  void initState() {
    super.initState();
    heroesRef = FirebaseDatabase.instance.reference().child('/Posts');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('All Heroes'),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: null,
      body: StreamBuilder(
          stream: Firestore.instance.collection("Posts").snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView(
              children: snapshot.data.documents.map((document) {
                return Row(
                    children: <Widget>[
                      Container(
                        width: 120.0,
                        height: 95.0,
                        child: Image.network(
                            document["imageUrl"],
                        ),
                      ),

                      Column(
                          children: <Widget>[
                      Container(
                        width: 170.0,
                        height: 20.0,
                        child: Text(document["name"],

                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            )),
                      ),

                      Container(
                        width: 90.0,
                        height: 20.0,
                        child: Text("winrate:" + document["winRate"]+"%",
                        overflow: TextOverflow.visible,
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                       width: 90.0,
                       height: 20.0,
                       child: Text(document["attribute"],
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.red,
                        ),
                       ),
                        ),
                            Container(
                              width: 90.0,
                              height: 20.0,
                              child: Text(document["id"],
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),


                    ]
                )
                    ]);

              }
              ).toList(),
            );
          }

      ),
    );
  }
}