import 'package:eximpapa/Main_screen/completeProfilePage.dart';
import 'package:flutter/material.dart';

class warehouse extends StatefulWidget {
  @override
  //State<StatefulWidget> createState() {
  _warehouse createState() => _warehouse();
}

class _warehouse extends State<warehouse> {
  void fun(int a) {}

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

  var _specificPositionSelected = 'Type';
  String itemspecific = "";
  var _specific = ['Type', 'All'];

  var _holdingCapacitySelected = 'Unit MT 1';
  String itemholding = " ";
  var _holding = ['Unit MT 1', '2', '3', '4', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     // resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Form(
              child: new Theme(
                data: new ThemeData(primarySwatch: Colors.grey),
                child: new Center(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(15, 30, 15, 20)),
                      new Text(
                        " WareHouse / Cold Storage",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.all(20.0)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 15),
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
                                hintStyle: TextStyle(
                                  fontSize: 14.0,
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 10, top: 10, left: 10)),
                            autofocus: false,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 135,
                        ),
                        child: Text(
                          "Position Selected",
                          style: TextStyle(color: Colors.black54),
                        ),
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
                                _onDropDownPositionItemSelected(
                                    newValueSelected),
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
                                hintStyle: TextStyle(
                                  fontSize: 14.0,
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 10, top: 10, left: 10)),
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
                                hintStyle: TextStyle(
                                  fontSize: 14.0,
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 10, top: 10, left: 10)),
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
                                hintText: 'Contact info(Optional)',
                                hintStyle: TextStyle(
                                  fontSize: 14.0,
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 10, top: 10, left: 10)),
                            autofocus: false,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
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
                                hintStyle: TextStyle(
                                  fontSize: 14.0,
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 10, top: 10, left: 10)),
                            autofocus: false,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 130,
                        ),
                        child: Text(
                          "Specific Product list",
                          style: TextStyle(color: Colors.black54),
                        ),
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
                            items: _specific.map((String dropDawnStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDawnStringItem,
                                child: Text(dropDawnStringItem),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) =>
                                _onDropDownSpecificSelected(newValueSelected),
                            value: _specificPositionSelected,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 140,
                        ),
                        child: Text(
                          "Holding Capacity",
                          style: TextStyle(color: Colors.black54),
                        ),
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
                            items: _holding.map((String dropDawnStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDawnStringItem,
                                child: Text(dropDawnStringItem),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) =>
                                _onDropDownHoldingCapacitySlected(
                                    newValueSelected),
                            value: _holdingCapacitySelected,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: Container(
                          width: 250,
                          height: 80,
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
                                labelText: 'Approx Changes',
                                hintText: 'Typing space.....',
                                hintStyle: TextStyle(
                                  fontSize: 14.0,
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 10, top: 10, left: 10)),
                            autofocus: false,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 10)),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => completeprofile()),
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
            )
          ],
        ),
      ),
    );
  }

  void _onDropDownPositionItemSelected(String newValueSelected) {
    setState(() {
      this._positionItemSelected = newValueSelected;
    });
  }

  void _onDropDownSpecificSelected(String newValueSelected) {
    setState(() {
      this._specificPositionSelected = newValueSelected;
    });
  }

  void _onDropDownHoldingCapacitySlected(String newValueSelected) {
    setState(() {
      this._holdingCapacitySelected = newValueSelected;
    });
  }
}
