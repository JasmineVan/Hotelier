import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hotelier/data/models/hotel.dart';

class HomeFragmentController extends GetxController{

  final searchTextEditingController = TextEditingController();

  List<String> dropdownValue = [
    'District 1',
    'District 2',
    'District 3',
    'District 4'
  ];

  List<Hotel> hotHotels = [
    Hotel(pictureURL: 'assets/images/bg (1).jpg', rating: 1.0),
    Hotel(pictureURL: 'assets/images/bg (2).jpg', rating: 2.0),
    Hotel(pictureURL: 'assets/images/bg (3).jpg', rating: 3.0),
    Hotel(pictureURL: 'assets/images/bg (4).jpg', rating: 4.0),
    Hotel(pictureURL: 'assets/images/bg (5).jpg', rating: 5.0),
  ];

  List<Hotel> nearbyHotels = [
    Hotel(pictureURL: 'assets/images/bg (6).jpg', rating: 1.0),
    Hotel(pictureURL: 'assets/images/bg (7).jpg', rating: 2.0),
    Hotel(pictureURL: 'assets/images/bg (8).jpg', rating: 3.0),
    Hotel(pictureURL: 'assets/images/bg (9).jpg', rating: 4.0),
    Hotel(pictureURL: 'assets/images/bg (10).jpg', rating: 5.0),
  ];

  List<Hotel> popularHotels = [
    Hotel(pictureURL: 'assets/images/bg (11).jpg', rating: 1.0),
    Hotel(pictureURL: 'assets/images/bg (12).jpg', rating: 2.0),
    Hotel(pictureURL: 'assets/images/bg (13).jpg', rating: 3.0),
    Hotel(pictureURL: 'assets/images/bg (14).jpg', rating: 4.0),
    Hotel(pictureURL: 'assets/images/bg (15).jpg', rating: 5.0),
  ];

  String getDefaultValue(){
    return dropdownValue.first;
  }
}