import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quote.dart';
import 'Quote_Card.dart';

void main() => runApp(MaterialApp(
  home: IdApp()
));

class IdApp extends StatefulWidget {
  @override
  _IdAppState createState() => _IdAppState();
}

class _IdAppState extends State<IdApp> {
  List<Quote> quotes = [
    Quote(quote: 'I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best.',
        author: 'Marlyn Monroe'),
    Quote(quote: 'Im selfish. ', author: 'Marlyn Monroe'),
    Quote(quote: 'Im selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you cant handle me at my worst, then you sure as hell dont deserve me at my best.',
        author: 'Marlyn Monroe'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quote Card"),
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}
