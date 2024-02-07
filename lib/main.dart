import 'package:flutter/material.dart';
import 'package:getx_project/Screen1.dart';
import 'package:get/get.dart';
import 'package:getx_project/Screen2.dart';





void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'screen1',
    routes: {
      'screen1' : (context)=>Screen1(),
      'screen2' : (context)=>Screen2(),

    },
  ));
}

