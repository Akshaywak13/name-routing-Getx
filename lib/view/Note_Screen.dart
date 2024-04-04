import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:name_routing_getx/controller/note_controller.dart';
import 'package:name_routing_getx/view/note_widgwt.dart';

class NotePage extends StatelessWidget {
   NotePage({super.key});
DbController dbcontra = Get.put(DbController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Note Api"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add,color: Colors.white,),
      ),
body: Padding(padding: EdgeInsets.all(10),
child: GridView.count(crossAxisCount: 2,
crossAxisSpacing: 10,
mainAxisSpacing: 10,
children: dbcontra.notesList.map((e) => NoteWidget(note: e ),).toList(),
),
),
    );
  }
}