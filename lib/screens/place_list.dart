import 'package:flutter/material.dart';
import 'package:garbage/screens/add_place.dart';
import 'package:provider/provider.dart';
import 'package:garbage/providers/great_places.dart';

class PlaceListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('your places'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
                },
                icon: Icon(Icons.add)),
          ],
        ),
        body: Consumer<GreatPlaces>(
          child: Center(
            child: const Text('got no places yet, start adding now'),
          ),
          builder: (ctx, greatPlaces, ch) => greatPlaces.items.length <= 0
              ? ch!
              : ListView.builder(
                  itemCount: greatPlaces.items.length,
                  itemBuilder: (ctx, i) => ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              FileImage(greatPlaces.items[i].image),
                        ),
                        title: Text(greatPlaces.items[i].title),
                        onTap: () {},
                      )),
        ));
  }
}
