import 'package:flutter/material.dart';
import 'package:homepricepredictor/homepage.dart';

void main()
{ 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: HomePage(),
    );
  }
}
