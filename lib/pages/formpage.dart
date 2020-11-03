import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:google_fonts/google_fonts.dart';

class Formpage extends StatefulWidget {

  // ignore: non_constant_identifier_names
  final String Formimagepath;
  final String formStateName;

  // ignore: non_constant_identifier_names
  const Formpage({Key key, this.Formimagepath, this.formStateName}) : super(key: key);

  @override
  _FormpageState createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {

  @override
  Widget build(BuildContext context) {
   // double widthdevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
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
              height: heightDevice*0.25,
           //   color: Colors.lightBlue,
            ),
            RichText(text: TextSpan(
                text : widget.formStateName,
                style: GoogleFonts.bellota(textStyle: TextStyle(color: Colors.black54) ,fontSize: 25 ,fontWeight: FontWeight.w800)
            )
            ),
            Formwidget(),
          ],
        ),
      ),
    );
  }
}

class Formwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          DropDownField(
            controller: locationController,
            hintText: "Select Location",
            enabled: true,
            items: locationBangalore,
          ),
        ],
      ),
    );
  }
}

final locationController = TextEditingController();

List<String> locationBangalore = [
  "Delhi",
  "Mumbai",
];

