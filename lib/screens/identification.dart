import 'package:flutter/material.dart';

class Dotes extends StatefulWidget {
  @override
  _DotesState createState() => _DotesState();
}

class _DotesState extends State<Dotes> {

  int idlevel=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
       title: Text('Dota 2 ID Card'),
       centerTitle: true,
       backgroundColor: Colors.grey[800],
       elevation: 0.0,

     ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          new FloatingActionButton(
            heroTag: "btn1",
              onPressed: () {
                setState(() {
                  idlevel -=1;
                });
              },
              child: Icon(
                  Icons.remove
              ),
              backgroundColor: Colors.grey[500],
            ),
           new FloatingActionButton(
             heroTag: "btn2",
             onPressed: (){
               setState(() {
                 idlevel +=1;
               });
             },
             child: Icon(
               Icons.add
             ),
             backgroundColor: Colors.grey[500],

           )
        ],
      ),
     body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[

           Center(
             child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Juggernaut_icon.png'),
               radius: 90.0,
               ),
           ),
           Divider(
             height:60.0,
             color:Colors.grey,
           ),
           Text(
         'NAME',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
          ),
     ),
           SizedBox(height:10.0),
           Text(
             'Grgur Jukić',
             style: TextStyle(
               color: Colors.amberAccent[200],
               letterSpacing: 2.0,
               fontSize: 28.0,
               fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height:30.0),
           Text(
             'DOTA 2 TAG',
             style: TextStyle(
               color: Colors.grey,
               letterSpacing: 2.0,
             ),
           ),
           SizedBox(height:10.0),

           Text(
             'goNext',
             style: TextStyle(
                 color: Colors.amberAccent[200],
                 letterSpacing: 2.0,
                 fontSize: 28.0,
                 fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height:30.0),
           Text(
             'FAVOURITE DOTA 2 HERO',
             style: TextStyle(
               color: Colors.grey,
               letterSpacing: 2.0,
             ),
           ),
           Text(
             'Juggernaut',
             style: TextStyle(
                 color: Colors.amberAccent[200],
                 letterSpacing: 2.0,
                 fontSize: 28.0,
                 fontWeight: FontWeight.bold
             ),
           ),
           SizedBox(height:30.0),
           Text(
             'DOTA 2 FORUM LEVEL',
             style: TextStyle(
               color: Colors.grey,
               letterSpacing: 2.0,
             ),
           ),

           SizedBox(height:10.0),
           Text(
             '$idlevel',
             style: TextStyle(
                 color: Colors.amberAccent[200],
                 letterSpacing: 2.0,
                 fontSize: 28.0,
                 fontWeight: FontWeight.bold
             ),
           ),
           Row(
             children: <Widget>[
               Icon(
                 Icons.email,
                 color: Colors.grey[400],
               ),
               SizedBox(width:10.0),
               SizedBox(height:50.0),
               Text(
                 'E-mail address',
                 style: TextStyle(
                   color: Colors.grey,
                   letterSpacing: 2.0,
                 ),
               ),
               SizedBox(width:10.0),
               Text(
                 'gjukic@etfos.hr',

                 style: TextStyle(
                     color:Colors.grey[400],
                     fontSize: 18.0,
                     fontWeight: FontWeight.bold
                 ),

               ),

             ],
           ),

     ],
     ),
    ),
    );
  }
}
class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int counter=1;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
