import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello World",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
          child: Image(
            image: AssetImage('Assets/space.jpg'),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(
          "Click",
          style: TextStyle(
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
    );
  }
}
