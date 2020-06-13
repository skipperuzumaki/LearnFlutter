import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});
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
              SizedBox(height: 6.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    quote.author,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey
                    ),
                  ),
                  FlatButton(
                    onPressed: (){delete();},
                    child: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  )
                ]
              ),
            ],
          ),
        )
    );
  }
}
