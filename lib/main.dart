import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarBrightness: Brightness.dark,
  //   statusBarIconBrightness: Brightness.light,
  //   statusBarColor: Colors.red
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Status Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeAnnotatedRegion(),
    );
  }
}


class ChangeFromAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(brightness: Brightness.dark,),
      backgroundColor: Colors.teal,
      body: Center(child: Text("Hi there"))
    );
  }
}

class ChangeAnnotatedRegion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value:  SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.red
    ),
      child: Scaffold(
        backgroundColor: Colors.teal,
          body: SafeArea(
              child: Center(child: Text("Hi there Annotated")))
      ),
    );
  }
}