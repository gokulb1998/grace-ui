import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grace_ui/Screens/Auth/index.dart';

class Routes {
  Routes() {
    runApp(MaterialApp(
      title: 'grace_ui',
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => Main(),
        '/auth': (BuildContext context) => Auth(),
        '/register': (BuildContext context) => Register(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
      ),
    ));
  }
}