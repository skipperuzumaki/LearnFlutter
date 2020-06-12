import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Hello World"),
      centerTitle: true,
    ),
    body: Center(
      child: Text("Hey People")
    ),
    floatingActionButton: FloatingActionButton(
      child: Text("Click"),
    ),
  ),
));

