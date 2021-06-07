
import 'package:eximpapa/Main_screen/completeProfilePage.dart';
import 'package:flutter/material.dart';

class farmer extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {}
  _farmerState createState() => _farmerState();
}

class _farmerState extends State<farmer> {
  var _positionItemSelected = 'Sqfeet';
  String itemDropOne = "";
  var _position = [
    'Sqfeet',
    'SqMeter',
    'Heactare',
    'Beegha'
  ];

  var _farmingLeadsItemSelected ='ALFALFA';
  String itemFarmers ="";
  var _farmerLeads = ['ALFALFA','CORN','FISH','RICE','SOYBEAN','SEEDS','WHEAT','GRAIN','TREES'];

  var _cropItemSelected='ALFALFA';
  String itemCrop ="";
  var _crops = ['ALFALFA','CORN','FISH','RICE','SOYBEAN','SEEDS','WHEAT','GRAIN','TREES'];

  var _otherCropItemSelected ='BERRIES';
  String itemOtherCrop ="";
  var _otherCrops = ['BERRIES','COTTON','TOBACCO','OATS','CITRUS FRUITS','PODDED VEGETABLES','TROPICAL FRUITS','ORGANIC FARMERS','BULB AND STEM VEGETABLES'];

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
              child: new Container(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(15, 30, 15, 20)),
                    new Text(
                      " Farmer ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("farmer join as",
                      style: TextStyle(
                          color: Colors.black,fontSize:17.0
                      ),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 60, 50, 10),
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
                            hintText: 'Crop Name',
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 10, 50, 15),
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
                            hintText: 'Minimum Production Capacity',
                            contentPadding: EdgeInsets.only(
                                bottom: 10, top: 10, left: 10),
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 160,
                      ),
                      child: Text(
                        "Available Land",
                        style: TextStyle(color: Colors.black54),
                      ),
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
                          dropdownColor: Colors.grey,
                          isExpanded: true,
                          items: _position.map((String dropDawnStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDawnStringItem,
                              child: Text(dropDawnStringItem
                                ,style: TextStyle(color: Colors.black54),),

                            );
                          }).toList(),
                          onChanged: (String newValueSelected) =>
                              _onDropDownPositionItemSelected(newValueSelected),
                          value: _positionItemSelected,
                        ),
                      ),
                    ),

                    /*
                    Padding(
                      padding: EdgeInsets.only(
                        right: 170,
                      ),
                      child: Text(
                        "Acres Size",
                        style: TextStyle(color: Colors.black54),
                      ),
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
                      padding: EdgeInsets.only(
                        right: 199,
                      ),
                      child: Text(
                        "Crops",
                        style: TextStyle(color: Colors.black54),
                      ),
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
                         // dropdownColor: Colors.blueGrey,

                          isExpanded: true,
                          items: _crops.map((String dropDawnStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDawnStringItem,
                              child: Text(dropDawnStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) =>
                              _onDropDownCropsItemSelected(newValueSelected),
                          value: _cropItemSelected,
                        ),
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.only(
                        right: 170,
                      ),
                      child: Text(
                        " Other Crops",
                        style: TextStyle(color: Colors.black54),
                      ),
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
                         // dropdownColor: Colors.lightBlueAccent,
                          isExpanded: true,
                          items: _otherCrops.map((String dropDawnStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDawnStringItem,
                              child: Text(dropDawnStringItem),
                            );
                          }).toList(),
                          onChanged: (String newValueSelected) =>
                              _onDropDownOtherCropsItemSelected(newValueSelected),
                          value: _otherCropItemSelected,
                        ),
                      ),
                    ),*/
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,8,8,8),
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
                            hintText: 'Country Name',
                            contentPadding: EdgeInsets.only(
                                bottom: 10, top: 10, left: 10),
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,8,8,8),
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
                            hintText: 'City Name',
                            contentPadding: EdgeInsets.only(
                                bottom: 10, top: 10, left: 10),
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,8,8,8),
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
                            hintText: 'Area',
                            contentPadding: EdgeInsets.only(
                                bottom: 10, top: 10, left: 10),
                          ),
                          autofocus: false,
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 45)),
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
  void _onDropDownCropsItemSelected(String newValueSelected){
    setState(() {
      this._cropItemSelected= newValueSelected;
    });
  }
  void _onDropDownOtherCropsItemSelected(String newValueSelected){
    setState(() {
      this._otherCropItemSelected =newValueSelected;
    });
  }
}

