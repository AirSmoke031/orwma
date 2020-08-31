import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  @override
  NotesState createState() => NotesState();
}
class NotesState extends State <Notes>{
  final TextEditingController controller= new TextEditingController();
    void dispose() {
    controller.dispose();
    super.dispose();
  }

  String result= " ";
  @override

Widget build(BuildContext context) {
  return Scaffold(
    appBar: new AppBar(title: new Text("Personal Notes"),
    backgroundColor: Colors.blue[900],
    ),
    body: new Container(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                hintText: "Type notes in here."
              ),
              onSubmitted: (String str){
                setState(() {
                  result=result + "\n" + str;
                });
                controller.text= "";
              },
            ),
            new Text(result)
          ],
        )
      )
    ),




  );
   }
}
