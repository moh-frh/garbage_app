import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:garbage/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(String pickedTitle, File pickedImage) {
    final newPlace = Place(DateTime.now().toString(), pickedTitle, null, pickedImage);

    _items.add(newPlace);
    notifyListeners();
  }
}
