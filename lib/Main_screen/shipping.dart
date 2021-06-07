
import 'package:eximpapa/Main_screen/completeProfilePage.dart';
import 'package:flutter/material.dart';

class shippinglines extends StatefulWidget{
  @override
  // State<StatefulWidget> createState() {
  _shippinglinesState createState() => _shippinglinesState();
}


class _shippinglinesState extends State<shippinglines>{

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            new Form(
                child: new Theme(
                    data: new ThemeData(
                        primarySwatch: Colors.grey
                    ),
                    child: new Center(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.fromLTRB(15, 30, 15, 10)),
                          new Text("Shipping Lines",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),),
                          Padding(padding: EdgeInsets.fromLTRB(30,0,30,10)),
                          Text("Shipping lines join as",
                            style: TextStyle(
                                color: Colors.black,fontSize:17.0
                            ),),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(52,52,52,10),
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
                                  hintText: 'Contact info(Optional)',
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
                            padding: const EdgeInsets.fromLTRB(5, 5,5, 10),
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
                                    hintText: 'Services in country',
                                    hintStyle: TextStyle(fontSize: 14.0, ),
                                    contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10)
                                ),
                                autofocus: false,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5,5,5,0),
                            child: Container(
                              width: 250,
                              height: 88,
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
                                  hintText: 'Covered Port Name..',
                                    hintStyle: TextStyle(fontSize: 14.0, ),
                                    contentPadding: EdgeInsets.only(bottom: 10,top: 10,left: 10)
                                ),
                                autofocus: false,
                              ),
                            ),
                          ),
                          Padding(padding: const EdgeInsets.only(top: 20,bottom: 10)),


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
