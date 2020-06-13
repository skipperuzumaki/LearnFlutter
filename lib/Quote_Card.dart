import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({this.quote});
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.black,
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.quote,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white
                ),
              ),
              Text(
                quote.author,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey
                ),
              )
            ],
          ),
        )
    );
  }
}
