import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
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
