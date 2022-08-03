import 'package:flutter/cupertino.dart';
import 'package:garbage/models/place.dart';

class Places with ChangeNotifier{
  List<Place> _items = [];

  List<Place> get items{
    return [..._items];
  }
}