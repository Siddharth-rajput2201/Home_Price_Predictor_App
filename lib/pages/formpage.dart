import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:homepricepredictor/widgets/form_widget.dart';

class Formpage extends StatefulWidget {

  // ignore: non_constant_identifier_names
  final String Formimagepath;

  // ignore: non_constant_identifier_names
  const Formpage({Key key, this.Formimagepath}) : super(key: key);

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
                image: AssetImage(widget.Formimagepath),
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

