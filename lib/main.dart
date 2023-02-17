import 'package:flutter/material.dart';
import 'package:flutterbasics/choose_location.dart';
import 'quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp
  (
    debugShowCheckedModeBanner: false,
    home: QuoteList()));



class QuoteList extends StatefulWidget{

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList>{

  List<Quote> quotes = [
    Quote(author: 'John Lennon', text: 'The greatest glory in living lies not in never falling, but in rising every time we fall. '),
    Quote(author: 'Oprah Winfrey', text: 'The way to get started is to quit talking and begin doing'),
    Quote(author: 'Oprah Winfrey', text: 'If life were predictable it would cease to be life, and be without flavor'),
    Quote(author: 'Oprah Winfrey', text: 'Life is what happens when youre busy making other plans'),
    //Quote(author: 'Oprah Winfrey', text: 'If you set your goals ridiculously high and it\'s a failure, you will fail above everyone else\'s success.'),
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('aweosme quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete : (){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('hello'),
          Text('ryan'),
          Row(
            children: [
              Text('hello '),
              Text('how '),
              Text('are '),
            ]
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(20.0),
            child: Text('inside container'),
          ),
          Container(
            color: Colors.pinkAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(40.0),
            child: Text('inside container'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text('item 1'),
            ),
            ListTile(
              title: Text('item 2'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click '),
      ),
    );
    throw UnimplementedError();
  }
}
