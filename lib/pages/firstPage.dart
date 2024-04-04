import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:name_routing_getx/controller/movie.dart';

// ignore: must_be_immutable
class FirstPage extends StatelessWidget {
  var count = 0.obs;

  var movie = Movie(name: 'Wanted', ticket: 150).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/second");
                  // Get.toNamed("/second?a=1&b=2");
                },
                child: Text("Navigate to second page")),
            SizedBox(
              height: 15,
            ),
            Obx(
              () => Text(
                "$count",
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  count++;
                  print("$count");
                },
                child: Text('increment')),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => Text(
                "${movie.value.name}",
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  movie.value.name = 'Akshay';
                  movie.refresh();
                  print(movie.value.name);
                },
                child: Text("Upper"))
          ],
        ),
      ),
    );
  }
}
