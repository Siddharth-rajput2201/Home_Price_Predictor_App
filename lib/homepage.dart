import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepricepredictor/widgets/state_panel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20)
            )
          ),
           title: Image.asset("Assets/Images/logo.png",height: 100,width: 130,),
           backgroundColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(text: TextSpan(
                    text : 'We Use Advance Machine Learning Algorithm To Precisely Predict Home Prices',
                    style: GoogleFonts.aBeeZee(textStyle: TextStyle(color: Colors.black54) ,fontSize: 18)
                )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left : 12.0 ,right: 12 ,bottom: 2),
                child: Divider(thickness: 2,),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child : RichText(text: TextSpan(
                      text : 'Select State',
                      style: GoogleFonts.titilliumWeb(textStyle: TextStyle(color: Colors.black54) ,fontSize: 30)
                  )
                  ),
                  ),
                  Image.asset("Assets/Images/location.png",height: 45 ,width: 100,),
                ],
              ),
              SizedBox(height: 10,),
              state_panel(),
            ],
          ),
        ),
      ),
    );
  }
}
