import 'package:callcenterapp/HomePage.dart';
import 'package:flutter/material.dart';

import 'package:workmanager/workmanager.dart';
import 'call_log.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
  Workmanager().initialize(callbackDispatcher, isInDebugMode: false);
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homepage,
      routes: {
        MyRoutes.callDetails:(context)=> callLog(),
        MyRoutes.homepage:(context)=> HomePage(),
      },
    );
  }
}


