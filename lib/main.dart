import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IdApp()
));

class IdApp extends StatefulWidget {
  @override
  _IdAppState createState() => _IdAppState();
}

class _IdAppState extends State<IdApp> {
  int Level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ID Card"),
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Level += 1;
          });
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add,color: Colors.grey,),
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("Assets/images.jpg"),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
                color: Colors.grey[600],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Son Goku',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 1.0,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$Level',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 1.0,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(Icons.email,color: Colors.grey,),
                SizedBox(width: 10.0,),
                Text(
                  'S.Gku@dbz.co.jp',
                  style: TextStyle(
                    color: Colors.grey,
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

