import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:name_routing_getx/view/Note_Screen.dart';
import 'package:name_routing_getx/pages/firstPage.dart';
import 'package:name_routing_getx/pages/secondPage.dart';
import 'package:name_routing_getx/pages/thirdPage.dart';
import 'package:name_routing_getx/pages/unknownPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "first",
      defaultTransition: Transition.leftToRightWithFade,
      getPages: [
        GetPage(name: "/first", page: ()=> FirstPage()),
        GetPage(name: "/second", page: ()=> SecondPage()),
        GetPage(name: "/third", page: ()=> ThirdPage()),
      ],

    unknownRoute: GetPage(name: "/unknown", page:() => UnknownPage()),
    home: NotePage(),
    );
  }
}
