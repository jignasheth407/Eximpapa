
import 'package:eximpapa/Main_screen/completeProfilePage.dart';
import 'package:flutter/material.dart';

class importer extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {
  State createState() => _importerState();
}

class _importerState extends State<importer> {



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
                    Padding(padding: EdgeInsets.fromLTRB(15, 30, 15, 20)),
                    new Text(
                      " Importer/Buyer",
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
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Container(
                        width: 250,
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
                      padding: const EdgeInsets.all(8.0),
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
                            hintText: 'Company Location city (Optional)',
                            hintStyle: TextStyle(fontSize: 14.0, ),
                              contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10)
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 250,
                        height: 78,
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
                            labelText: "Import Product list",
                            hintText: 'Typing Space',
                            hintStyle: TextStyle(fontSize: 14.0, ),
                              contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10)
                          ),
                          autofocus: false,
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
                            color: Colors.black54,
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
}
