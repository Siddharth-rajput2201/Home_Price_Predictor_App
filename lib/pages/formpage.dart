import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:homepricepredictor/widgets/form_widget.dart';

class Formpage extends StatefulWidget {
  @override
  _FormpageState createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {
  @override
  Widget build(BuildContext context) {
   // double widthdevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("Assets/Images/Bangalore.jpg"),
              ),
            ),
            height: heightDevice*0.2,
         //   color: Colors.lightBlue,
          ),
          Formwidget(),
        ],
      ),
    );
  }
}

