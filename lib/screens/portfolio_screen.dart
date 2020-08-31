import 'package:flutter/material.dart';

class PortfolioScreen extends StatefulWidget {
  @override
  PortfolioScreenState createState() => PortfolioScreenState();
}

class PortfolioScreenState extends State<PortfolioScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Portfolio'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          elevation: 0.0,

        ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:50.0),
          ),

          Text('Flutter Developer',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.lightBlue,
            ),
          ),
          SizedBox(height: 50,),
          CircleAvatar(radius: 70,
            backgroundImage: AssetImage('assets/images/maturant.jpg'),
          ),
          Text('Grgur Jukić',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.lightBlue,
          )
          ),
          SizedBox(height: 50,),

          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail,
                  size: 50.0,
                  color: Colors.grey,
                  ),
                  SizedBox(width: 20.0),
                  Text('gjukic@etfos.hr',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.lightBlue,
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on,
                    size: 50.0,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20.0),
                  Text('Osijek, Croatia ',
                  style: TextStyle(
                   fontSize: 18.0,
                    color: Colors.lightBlue,
                  ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.branding_watermark,
                    size: 50.0,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20.0),
                  Text('Student at FERIT',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.lightBlue,
                  ),
                 )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle,
                    size: 50.0,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20.0),
                  Text('F1 enthusiast    ',
                  style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.lightBlue,
                  ),
                )
                ],
              ),
            ],
          )
        ],
      )
    );




  }
}