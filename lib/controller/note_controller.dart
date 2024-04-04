import 'dart:convert';
import 'dart:ffi';

import 'package:get/get.dart';
import 'package:name_routing_getx/model/note_model.dart';
import 'package:http/http.dart' as http;

class DbController extends GetxController{

String baseurl ="https://65e8133d53d564627a8fc5db.mockapi.io/noteapp";

RxList<NotesModel>notesList = RxList<NotesModel>();

Future<void> getNotes ()async{

  var response = await http.get(Uri.parse(baseurl));

var notes = jsonDecode(response.body);
for(var note in notes){
  notesList.add(NotesModel.fromJson(note));
}

  if(response.statusCode==200){
    print("Get Note");
  }
}


}