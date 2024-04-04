import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Text(Get.parameters["a"]!,),
            ElevatedButton(onPressed: (){
              Get.toNamed("/third");
            },
             child: Text("Navigate to third page")),
             SizedBox(height: 15,),

             ElevatedButton(onPressed: (){
          Get.back();
             },
              child: Text("Back"),),
          ],
        ),
      ),
    );
  }
}