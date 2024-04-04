import 'package:get/get.dart';


// // A class is observable by making individual varialbles observable

// class Movie {

//   var name = "Wanted".obs;
//   var ticket = 200.obs;
// }



// A make entire class as observable
class Movie{
  String? name;
  int? ticket;
  Movie({required this.name , required this.ticket});
}