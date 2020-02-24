import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grace_ui/Screens/Auth/index.dart';
import 'package:grace_ui/Screens/Homepage/homepage.dart';

class Routes {
  Routes() {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.dumpErrorToConsole(details);
      if (kReleaseMode) exit(1);
    };
    runApp(MaterialApp(
      title: 'grace_ui',
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => Main(),
        '/auth': (BuildContext context) => Auth(),
        '/register': (BuildContext context) => Register(),
        '/home': (BuildContext context) => HomePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
        iconTheme: IconThemeData(color: Colors.yellow),
      ),
    ));
  }
}
