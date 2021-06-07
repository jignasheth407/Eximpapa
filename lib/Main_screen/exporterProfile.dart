import 'package:eximpapa/Main_screen/completeProfilePage.dart';
import 'package:flutter/material.dart';

class Exporter extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {}
  _ExporterState createState() => _ExporterState();
}

class _ExporterState extends State<Exporter> {


  String itemDropOne = "";
  String itemType = "";
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
  var _typechoose = [
    'Manufacturer',
    'Producer',
    'Exporter',
    'Farmer',
    'Supplier',
    'International Buying Agent'
    'Trender',
  ];
  var _positionItemSelected = 'Director';
  var _typeItemSelected = 'Farmer';

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
                    primarySwatch: Colors.grey,
                  ),
                  child: new Center(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(15, 30, 15, 20)),
                        new Text(
                          " Exporter/Supplier",
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
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54),
                                 borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10),
                                // labelText: 'Enter Name Here',
                                hintText: 'Company Name',
                                hintStyle: TextStyle(fontSize: 14.0, ),
                              ),
                              autofocus: false,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 130,
                          ),
                          child: Text(
                            "Position Selected",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                          child: Container(
                            width: 240,
                            height: 48,
                            //decoration: BoxDecoration(
                            // color: Colors.greenAccent,
                            //   border: Border.all(color: Colors.white)),
                            child: DropdownButton<String>(
                              dropdownColor: Colors.grey,
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
                          padding: EdgeInsets.only(
                            right: 150,
                          ),
                          child: Text(
                            "Type Selected",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                          child: Container(
                            width: 240,
                            height: 48,
                            child: DropdownButton<String>(
                              isExpanded: true,
                              items:
                              _typechoose.map((String dropDawnStringItemOne) {
                                return DropdownMenuItem<String>(
                                  value: dropDawnStringItemOne,
                                  child: Text(dropDawnStringItemOne),
                                );
                              }).toList(),
                              onChanged: (String newItemSelected) =>
                                  _onDropDownTypeItemSelected(newItemSelected),
                              value: _typeItemSelected,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: 250,
                            height: 48,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white10),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                // labelText: 'Enter Name Here',
                               // helperText: 'optional',
                                hintText: 'Company Located city  (Optional)',
                                hintStyle: TextStyle(fontSize: 14.0, ),
                                  contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10),

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
                            child: TextFormField(
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
                                //  helperText: 'optional',
                                hintText: 'Company Located Country(Optional)',
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
                            child: TextFormField(
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
                                  hintStyle: TextStyle(fontSize: 14.0, ),
                                  //helperText: 'optional',
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
                                labelText: "Export Product list",
                                hintText: 'Typing space....',
                                hintStyle: TextStyle(fontSize: 14.0, ),
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
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),

                      ],
                    ),
                  )))
        ],
      ),
    );
  }
  void _onDropDownPositionItemSelected(String newValueSelected) {
    setState(() {
      this._positionItemSelected = newValueSelected;
    });
  }
  void _onDropDownTypeItemSelected(String newItemSelected) {
    setState(() {
      this._typeItemSelected = newItemSelected;
    });
  }

}
