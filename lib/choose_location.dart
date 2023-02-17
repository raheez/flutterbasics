import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'London'),
    WorldTime(location: 'Athens'),
    WorldTime(location: 'Cairo'),
    WorldTime(location: 'Nairobi'),
    WorldTime(location: 'Chicago'),
    WorldTime(location: 'New York'),
    WorldTime(location: 'Seoul'),
    WorldTime(location: 'Jakarta'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  title: Text(locations[index].location),
                ),
              ),
            );
          }),
    );
  }
}
