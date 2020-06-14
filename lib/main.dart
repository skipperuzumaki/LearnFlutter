import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'pages/Loading.dart';
import 'pages/Location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/Location': (context) => Location(),
  },
));
