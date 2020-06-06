import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class state_panel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2),
      children: <Widget>[
           Panel(statename : 'delhi'),
           Panel(statename : 'Bangalore'),
        ],
      ),
    );
  }
}

class Panel extends StatelessWidget {

  final String statename;

  const Panel({Key key, this.statename}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RichText(text: TextSpan(
              text : statename,
              style: GoogleFonts.aBeeZee(textStyle: TextStyle(color: Colors.black54) ,fontSize: 18)
          )
          ),
        ],
      ),
    );
  }
}
