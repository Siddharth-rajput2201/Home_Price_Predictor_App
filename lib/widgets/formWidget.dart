import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:http/http.dart' as http;

class Formwidget extends StatefulWidget {

  final String state;

  const Formwidget({Key key, this.state}) : super(key: key);

  @override
  _FormwidgetState createState() => _FormwidgetState();
}

class _FormwidgetState extends State<Formwidget> {

  // Future<void> getData() async {
  //   var response = await http.post("" , body : jsonEncode({""}) , headers : {"content-type" : "application/json" });
  //   print(response.body);
  // }
  String location;
  Map locationDataBangalore;
  fetchlocationData()async{
    location = widget.state;
    http.Response locationData = await http.get("http://192.168.0.102:5000/get_location_names_$location");
    setState(() {
      locationDataBangalore = jsonDecode(locationData.body);
    });
    print(locationDataBangalore['locations']);
  }
  @override
  void initState() {
    fetchlocationData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return locationDataBangalore == null ? Center(child: CircularProgressIndicator(),) :Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropDownField(
              controller: locationController,
              hintText: "Select Location",
              enabled: true,
              itemsVisibleInDropdown: 5,
              items: locationDataBangalore["locations"].cast<String>(),
            ),
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
