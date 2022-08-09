import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Location{
  final double latitude;
  final double longitude;
  final String address;

  Location({required this.latitude, required this.longitude, required this.address});


}

class Place{
  final String id;
  final String title;
  final Location? location;
  final File image;

  Place(this.id, this.title, this.location, this.image);


}