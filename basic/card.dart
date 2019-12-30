import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: NinjaCard(),
      ),
    );

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/test1.jpeg'),
                radius: 50,
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 50,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'chun-li',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Current Lever',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  'chun-li@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
