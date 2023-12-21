import 'package:get/get.dart';
import 'package:hotelier/data/models/hotel.dart';

class HomeFragmentController extends GetxController{

  List<Hotel> hotels = [
    Hotel(pictureURL: 'assets/images/bg (1).jpg', rating: 1.0),
    Hotel(pictureURL: 'assets/images/bg (2).jpg', rating: 2.0),
    Hotel(pictureURL: 'assets/images/bg (3).jpg', rating: 3.0),
    Hotel(pictureURL: 'assets/images/bg (4).jpg', rating: 4.0),
    Hotel(pictureURL: 'assets/images/bg (5).jpg', rating: 5.0),
  ];
}