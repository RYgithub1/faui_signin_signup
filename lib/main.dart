import 'package:flutter/material.dart';
import 'home_page.dart';


void main(List<String> args) {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SignIn_SignUp",
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}