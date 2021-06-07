

import 'package:eximpapa/Main_screen/completeProfilePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class broker extends StatefulWidget {
  @override
  //State<StatefulWidget> createState() {
  _brokerState createState() => _brokerState();
}

class _brokerState extends State<broker> {


  var _positionItemSelected = 'Director';
  String itemDropOne = "";
  var _position = [
    'Director',
    'CEO',
    'Proprieter',
    'Manager',
    'Asst. Mng',
    'Broker',
    'Owner',
    'Employee',
    'Other',
  ];

  var _countryName = 'USA';
  String country = "";
  var _country = ['USA' ,
    'INDIA' ,'AMERICA' ,'LONDON'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     // resizeToAvoidBottomPadding: false,
      body: new Stack(
        children: <Widget>[
          new Form(
            child: new Theme(
              data: new ThemeData(
                  primarySwatch: Colors.grey),
              child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(15, 35, 15, 20)),
                    new Text(
                      " Broker",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 40,bottom: 10),
                      child: Container(
                        width: 250,
                        height: 48,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // labelText: 'Enter Name Here',
                            hintText: 'Company Name',
                              hintStyle: TextStyle(fontSize: 14.0, ),
                              contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10)
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(right: 135,),
                      child: Text("Position Selected",style: TextStyle(color: Colors.black54),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                      child: Container(
                        width: 240,
                        height: 48,
                        // decoration: BoxDecoration(
                        // color: Colors.greenAccent,
                        // border: Border.all(color: Colors.white)),
                        child: DropdownButton<String>(
                          // dropdownColor: Colors.grey,
                          isExpanded: true,
                          items: _position.map((String dropDawnStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDawnStringItem,
                              child: Text(dropDawnStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) =>
                              _onDropDownPositionItemSelected(newValueSelected),
                          value: _positionItemSelected,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 250,
                        height: 48,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // labelText: 'Enter Name Here',
                            hintText: 'Company Location city(Optional)',
                              hintStyle: TextStyle(fontSize: 14.0, ),
                              contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10)
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 250,
                        height: 48,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // labelText: 'Enter Name Here',
                            hintText: 'Company Location Country(Optional)',
                              hintStyle: TextStyle(fontSize: 14.0, ),
                              contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10)
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 250,
                        height: 48,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // labelText: 'Enter Name Here',
                            hintText: 'Contact info (Optional)',
                              hintStyle: TextStyle(fontSize: 14.0, ),
                              contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10)
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 250,
                        height: 48,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // labelText: 'Enter Name Here',
                            hintText: 'Contact Email',
                              hintStyle: TextStyle(fontSize: 14.0, ),
                              contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10)
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 8),
                      child: Container(
                        width: 250,
                        height: 48,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            // labelText: 'Enter Name Here',
                              labelText: "Deal in Product",
                            hintText: 'Product list typing space',
                              hintStyle: TextStyle(fontSize: 14.0, ),
                              contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10)
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 135,),
                      child: Text("Country Selected",style: TextStyle(color: Colors.black54),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                      child: Container(
                        width: 240,
                        height: 48,
                        // decoration: BoxDecoration(
                        // color: Colors.greenAccent,
                        // border: Border.all(color: Colors.white)),
                        child: DropdownButton<String>(
                          // dropdownColor: Colors.grey,
                          isExpanded: true,
                          items: _country.map((String dropDawnStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDawnStringItem,
                              child: Text(dropDawnStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) =>
                              _onDropDownCountrySelected(newValueSelected),
                          value: _countryName,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 30)),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => completeprofile()),
                        );
                      },
                      child: Text(
                        "Complete",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onDropDownPositionItemSelected(String newValueSelected) {
    setState(() {
      this._positionItemSelected = newValueSelected;
    });
  }

  void _onDropDownCountrySelected(String newValueSelected) {
    setState(() {
      this._countryName = newValueSelected;
    });
  }
}
